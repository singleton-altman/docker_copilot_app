import 'package:dio/dio.dart';
import 'package:docker_copilot_app/model/dc_auth.dart';
import 'package:docker_copilot_app/model/dc_container_list_model.dart';
import 'package:docker_copilot_app/model/dc_imgae_list_model.dart';
import 'package:docker_copilot_app/model/dc_response.dart';
import 'package:docker_copilot_app/model/dc_update_result.dart';
import 'package:docker_copilot_app/model/dc_version_info.dart';
import 'package:docker_copilot_app/utils/logger.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

enum DcAction {
  login,
  version,
  containers,
  containerUpdate,
  containerRename,
  containerStop,
  containerStart,
  containerRestart,
  imageList,
  imageDelete,
  backup,
  backupList,
  restoreBackup,
  deleteBackup,
  progress,
}

class _DcCookieInjector extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final dcController = Get.put(DcService());
    final cookie = dcController.cookie;
    if (cookie.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $cookie';
    }
    super.onRequest(options, handler);
  }
}

class DcService {
  var cookie = '';
  final _dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 120),
      sendTimeout: const Duration(seconds: 60)))
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true))
    ..interceptors.add(_DcCookieInjector());
  Future<DcResponse?> request(DcAction action,
      {String? info,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? data,
      ValidateStatus? validateStatus,
      String? contentType = 'application/json'}) async {
    final path = _path(action, info);
    final method = _method(action);
    try {
      final response = await _dio.request(
        path,
        queryParameters: queryParameters,
        data: data,
        options: Options(
            method: method,
            validateStatus: validateStatus,
            contentType: contentType),
      );
      // Check if response.data is null or not the expected format
      if (response.data is Map<String, dynamic>) {
        return DcResponse.fromJson(response.data);
      } else {
        throw const FormatException('Unexpected response format');
      }
    } catch (e) {
      if (e is DioException) {
        // Handle DioError here
        if (e.response != null && e.response!.data is Map<String, dynamic>) {
          EasyLoading.showError(e.response!.data['msg']);
        } else {
          EasyLoading.showError(e.toString());
        }
      } else {
        // Handle other types of errors
        EasyLoading.showError(e.toString());
      }
    }
    return null;
  }

  Future<DcAuth> login(String host, String secureKey) async {
    _dio.options.baseUrl = '$host/api/';
    final resp = await request(
      DcAction.login,
      data: {'secretKey': secureKey},
      contentType: 'application/x-www-form-urlencoded',
      validateStatus: (status) => status == 200,
    );
    if (resp?.code != 200 && resp?.code != 201) {
      throw Exception(resp?.msg);
    }
    return DcAuth.fromJson(resp?.data);
  }

  Future<DcVersionInfo?> getVersionInfo() async {
    final response = await request(DcAction.version);
    if (response?.code != 200) {
      throw Exception(response?.msg);
    }
    return DcVersionInfo.fromJson(response?.data);
  }

  Future<List<DcContainerListModel>> getContainerList() async {
    final response = await request(DcAction.containers);
    if (response?.code != 0) {
      throw Exception(response?.msg);
    }
    return (response?.data as List)
        .map((el) => DcContainerListModel.fromJson(el))
        .toList();
  }

  Future<String> updateContainer(String id, Map<String, dynamic> data) async {
    final resp = await request(
      DcAction.containerUpdate,
      info: id,
      data: data,
      contentType: 'application/x-www-form-urlencoded',
    );
    if (resp?.code != 200) {
      EasyLoading.showError(resp?.msg ?? '更新失败');
      throw Exception(resp?.msg);
    }
    return (resp?.data as Map<String, dynamic>)['taskID'];
  }

  Future<String> renameContainer(String id, String name) async {
    final resp = await request(DcAction.containerRename,
        info: id, queryParameters: {'newName': name});
    if (resp?.code != 200) {
      throw Exception(resp?.msg);
    }
    return resp!.msg;
  }

  Future<String> stopContainer(String id) async {
    final resp = await request(DcAction.containerStop, info: id);
    if (resp?.code != 200) {
      throw Exception(resp?.msg);
    }
    return resp!.msg;
  }

  Future<String> startContainer(String id) async {
    final resp = await request(DcAction.containerStart, info: id);
    if (resp?.code != 200) {
      throw Exception(resp?.msg);
    }
    return resp!.msg;
  }

  Future<String> restartContainer(String id) async {
    final resp = await request(DcAction.containerRestart, info: id);
    if (resp?.code != 200) {
      throw Exception(resp?.msg);
    }
    return resp!.msg;
  }

  Future<List?> getBackupList() async {
    final response = await request(DcAction.backupList);
    if (response?.code != 200) {
      throw Exception(response?.msg);
    }
    return (response?.data);
  }

  Future<String> deleteBackup(String id) async {
    final response = await request(
      DcAction.deleteBackup,
      info: id,
      validateStatus: (status) => status == 200,
    );
    return response?.msg ?? '删除成功';
  }

  Future<String> restoreBackup(String id) async {
    final response = await request(
      DcAction.restoreBackup,
      info: id,
      validateStatus: (status) => status == 200,
    );
    return response?.msg ?? '恢复成功';
  }

  Future<String> deleteImage(String id, {bool force = false}) async {
    final resp = await request(
      DcAction.imageDelete,
      info: id,
      queryParameters: {'force': force ? 'true' : 'false'},
      validateStatus: (status) => status == 200,
    );
    return resp?.msg ?? '删除成功';
  }

  Future<String?> backupContainer() async {
    final resp = await request(
      DcAction.backup,
      validateStatus: (status) => status == 200,
    );
    log.d('backup resp: $resp');
    return resp?.msg;
  }

  Future<DcUpdateResult> progress(String id) async {
    final resp = await request(
      DcAction.progress,
      info: id,
      validateStatus: (status) => status == 200,
    );
    log.d('progress resp: $resp');
    if (resp?.code != 200) {
      throw Exception(resp?.msg);
    }
    final result = DcUpdateResult.fromJson(resp!.data);
    return result;
  }

  Future<List<DcImgaeListModel>> getImageList() async {
    final response = await request(
      DcAction.imageList,
      validateStatus: (status) => status == 200,
    );
    return (response?.data as List)
        .map((el) => DcImgaeListModel.fromJson(el))
        .toList();
  }

  _path(DcAction action, String? extra) {
    switch (action) {
      case DcAction.login:
        return 'auth';
      case DcAction.version:
        return 'version?type=local';
      case DcAction.containers:
        return 'containers';
      case DcAction.containerRename:
        return 'container/$extra/rename';
      case DcAction.containerUpdate:
        return 'container/$extra/update';
      case DcAction.containerRestart:
        return 'container/$extra/restart';
      case DcAction.containerStart:
        return 'container/$extra/start';
      case DcAction.containerStop:
        return 'container/$extra/stop';
      case DcAction.imageList:
        return 'images';
      case DcAction.imageDelete:
        return 'image/$extra';
      case DcAction.backup:
        return 'container/backup';
      case DcAction.backupList:
        return 'container/listBackups';
      case DcAction.restoreBackup:
        return 'container/backups/$extra/restore';
      case DcAction.deleteBackup:
        return 'container/backups/$extra';
      case DcAction.progress:
        return 'progress/$extra';
    }
  }

  _method(DcAction action) {
    switch (action) {
      case DcAction.login:
      case DcAction.containerRename:
      case DcAction.containerUpdate:
      case DcAction.restoreBackup:
      case DcAction.containerRestart:
      case DcAction.containerStart:
      case DcAction.containerStop:
        return 'POST';
      case DcAction.version:
      case DcAction.containers:
      case DcAction.imageList:
      case DcAction.backupList:
      case DcAction.backup:
      case DcAction.progress:
        return 'GET';
      case DcAction.deleteBackup:
      case DcAction.imageDelete:
        return 'DELETE';
    }
  }
}
