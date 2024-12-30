// To parse this JSON data, do
//
//     final dcContainerListModel = dcContainerListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_container_list_model.freezed.dart';
part 'dc_container_list_model.g.dart';

DcContainerListModel dcContainerListModelFromJson(String str) =>
    DcContainerListModel.fromJson(json.decode(str));

String dcContainerListModelToJson(DcContainerListModel data) =>
    json.encode(data.toJson());

@freezed
class DcContainerListModel with _$DcContainerListModel {
  const factory DcContainerListModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "usingImage") required String usingImage,
    @JsonKey(name: "createImage") required String createImage,
    @JsonKey(name: "createTime") required String createTime,
    @JsonKey(name: "runningTime") required String runningTime,
    @JsonKey(name: "haveUpdate") required bool haveUpdate,
  }) = _DcContainerListModel;

  factory DcContainerListModel.fromJson(Map<String, dynamic> json) =>
      _$DcContainerListModelFromJson(json);
}
