import 'dart:async';

import 'package:docker_copilot_app/controller/dc_service.dart';
import 'package:docker_copilot_app/model/dc_update_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:docker_copilot_app/model/dc_config.dart';
import 'package:docker_copilot_app/model/dc_container_list_model.dart';
import 'package:docker_copilot_app/model/dc_imgae_list_model.dart';
import 'package:docker_copilot_app/model/dc_version_info.dart';
import 'package:docker_copilot_app/utils/hive.dart';
import 'package:docker_copilot_app/utils/logger.dart';

class DcController extends GetxService {
  static const hostKey = 'dc_config_key';
  static const securityKey = 'dc_config_value';
  final config = Rx<DcConfig?>(null);

  final service = Get.put(DcService());

  final version = Rx<DcVersionInfo?>(null);

  final containers = <DcContainerListModel>[].obs;

  final imageList = <DcImgaeListModel>[].obs;

  final backupList = <String>[].obs;

  final updateTasks = <DcUpdateModel>[].obs;

  Timer? progressTimer;

  bool get containerHaveUpdate =>
      containers.firstWhereOrNull((el) => el.haveUpdate) != null;

  final msUpdateAlertSwitch = false.obs;

  Future<void> start() async {
    final info = await getDcConfig();
    if (info == null) {
      return;
    }
    config.value = info;
    final auth = await this.auth(info.host, info.securityKey, autoLogin: true);
    if (auth == null) {
      return;
    }
    await getVersion();
    msUpdateAlertSwitch.value = appPrefrences.get(
      'key_ms_update_alert',
      defaultValue: false,
    );
    getTasksProgress();
    return;
  }

  switchMSUpdateAlert(bool value) {
    msUpdateAlertSwitch.value = value;
    appPrefrences.put('key_ms_update_alert', msUpdateAlertSwitch.value);
  }

  Future<DcConfig?> getDcConfig() async {
    final host = appPrefrences.get(DcController.hostKey);
    final securityKey = appPrefrences.get(DcController.securityKey);
    if (host == null || securityKey == null) {
      return null;
    } else {
      return DcConfig(
        host: host,
        securityKey: securityKey,
      );
    }
  }

  auth(String host, String securityKey, {bool autoLogin = false}) async {
    final result = await service.login(host, securityKey);
    if (result.jwt == null) {
      EasyLoading.showError('登录失败');
      return;
    }
    if (!autoLogin) {
      final info = DcConfig(host: host, securityKey: securityKey);
      config.value = info;
      appPrefrences.put(DcController.hostKey, host);
      appPrefrences.put(DcController.securityKey, securityKey);
    }
    EasyLoading.showSuccess('登录成功');
    service.cookie = result.jwt!;
    return result;
  }

  deleteDcConfig() async {
    appPrefrences.delete(DcController.hostKey);
    appPrefrences.delete(DcController.securityKey);
  }

  getVersion() async {
    version.value = await service.getVersionInfo();
    return version.value;
  }

  getContainers() async {
    final result = await service.getContainerList();
    result.sort(
        (a, b) => (b.haveUpdate ? 1 : -1).compareTo(a.haveUpdate ? 1 : -1));
    containers.value = result;
  }

  getImageList() async {
    var result = await service.getImageList();
    result.sort((a, b) => (b.inUsed ? 1 : -1).compareTo(a.inUsed ? 1 : -1));
    imageList.value = result;
  }

  getBackupList() async {
    final result = await service.getBackupList() ?? [];
    log.d(result.runtimeType);
    backupList.value = result.map((el) => el.toString()).toList();
  }

  createBackup() async {
    EasyLoading.show();
    final result = await service.backupContainer();
    getBackupList();
    EasyLoading.showSuccess('备份成功');
    return result;
  }

  deleteBackup(String id) async {
    EasyLoading.show();
    await service.deleteBackup(id);
    getBackupList();
    EasyLoading.showSuccess('备份$id已删除');
  }

  restoreBackup(String id) async {
    EasyLoading.show();
    final result = await service.restoreBackup(id);
    EasyLoading.showSuccess('备份$id已恢复');
    return result;
  }

  deleteImage(String id, {bool? forcus}) async {
    EasyLoading.show();
    await service.deleteImage(id, force: forcus ?? false);
    getImageList();
    EasyLoading.showSuccess('删除成功');
  }

  Future updateContainer(
    String id,
    bool delOld,
    String name,
    String imageNameAndTag,
  ) async {
    final result = await service.updateContainer(id, {
      'containerName': name,
      'delOldContainer': delOld,
      'imageNameAndTag': imageNameAndTag,
    });
    final task = DcUpdateModel(
      containerName: name,
      progress: 0,
      createDate: DateTime.now().microsecondsSinceEpoch,
      id: result,
      content: '',
      isDone: false,
    );
    updateTasks.insert(0, task);
    getContainers();
    return;
  }

  Future<String> renameContainer(String id, String name) async {
    return await service.renameContainer(id, name);
  }

  Future<String> stopContainer(String id) async {
    EasyLoading.show();
    final result = await service.stopContainer(id);
    getContainers();
    EasyLoading.showSuccess(result);
    return result;
  }

  Future<String> startContainer(String id) async {
    EasyLoading.show();
    final result = await service.startContainer(id);
    getContainers();
    EasyLoading.showSuccess(result);
    return result;
  }

  Future<String> restartContainer(String id) async {
    EasyLoading.show();
    final result = await service.restartContainer(id);
    getContainers();
    EasyLoading.showSuccess(result);
    return result;
  }

  getTasksProgress() async {
    progressTimer?.cancel();
    progressTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      for (var task in updateTasks) {
        if (task.progress == 100 || task.isDone) {
          continue;
        }
        final result = await service.progress(task.id);
        if (task.progress > result.percentage) {
          return;
        }
        task.progress = result.percentage;
        task.content = result.detailMsg;
        task.isDone = result.isDone;
        updateTasks.refresh();
      }
    });
  }
}
