// To parse this JSON data, do
//
//     final dcUpdateModel = dcUpdateModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'dc_update_model.g.dart';

DcUpdateModel dcUpdateModelFromJson(String str) =>
    DcUpdateModel.fromJson(json.decode(str));

String dcUpdateModelToJson(DcUpdateModel data) => json.encode(data.toJson());

@JsonSerializable()
class DcUpdateModel {
  @JsonKey(name: "content")
  String content;
  @JsonKey(name: "containerName")
  String containerName;
  @JsonKey(name: "progress")
  int progress;
  @JsonKey(name: "createDate")
  int createDate;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "isDone")
  bool isDone;
  DcUpdateModel({
    required this.containerName,
    required this.progress,
    required this.createDate,
    required this.id,
    required this.content,
    required this.isDone,
  });

  DcUpdateModel copyWith({
    String? containerName,
    int? progress,
    int? createDate,
    String? id,
    String? content,
    bool? isDone,
  }) =>
      DcUpdateModel(
        containerName: containerName ?? this.containerName,
        progress: progress ?? this.progress,
        createDate: createDate ?? this.createDate,
        id: id ?? this.id,
        content: content ?? this.content,
        isDone: isDone ?? this.isDone,
      );

  factory DcUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$DcUpdateModelFromJson(json);

  Map<String, dynamic> toJson() => _$DcUpdateModelToJson(this);
}
