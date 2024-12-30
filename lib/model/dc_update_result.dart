// To parse this JSON data, do
//
//     final dcUpdateResult = dcUpdateResultFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'dc_update_result.g.dart';

DcUpdateResult dcUpdateResultFromJson(String str) =>
    DcUpdateResult.fromJson(json.decode(str));

String dcUpdateResultToJson(DcUpdateResult data) => json.encode(data.toJson());

@JsonSerializable()
class DcUpdateResult {
  @JsonKey(name: "detailMsg")
  String detailMsg;
  @JsonKey(name: "isDone")
  bool isDone;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "percentage")
  int percentage;
  @JsonKey(name: "taskID")
  String taskId;

  DcUpdateResult({
    required this.detailMsg,
    required this.isDone,
    required this.message,
    required this.name,
    required this.percentage,
    required this.taskId,
  });

  DcUpdateResult copyWith({
    String? detailMsg,
    bool? isDone,
    String? message,
    String? name,
    int? percentage,
    String? taskId,
  }) =>
      DcUpdateResult(
        detailMsg: detailMsg ?? this.detailMsg,
        isDone: isDone ?? this.isDone,
        message: message ?? this.message,
        name: name ?? this.name,
        percentage: percentage ?? this.percentage,
        taskId: taskId ?? this.taskId,
      );

  factory DcUpdateResult.fromJson(Map<String, dynamic> json) =>
      _$DcUpdateResultFromJson(json);

  Map<String, dynamic> toJson() => _$DcUpdateResultToJson(this);
}
