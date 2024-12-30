// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dc_update_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DcUpdateResult _$DcUpdateResultFromJson(Map<String, dynamic> json) =>
    DcUpdateResult(
      detailMsg: json['detailMsg'] as String,
      isDone: json['isDone'] as bool,
      message: json['message'] as String,
      name: json['name'] as String,
      percentage: (json['percentage'] as num).toInt(),
      taskId: json['taskID'] as String,
    );

Map<String, dynamic> _$DcUpdateResultToJson(DcUpdateResult instance) =>
    <String, dynamic>{
      'detailMsg': instance.detailMsg,
      'isDone': instance.isDone,
      'message': instance.message,
      'name': instance.name,
      'percentage': instance.percentage,
      'taskID': instance.taskId,
    };
