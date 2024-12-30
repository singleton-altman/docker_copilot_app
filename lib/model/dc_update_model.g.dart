// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dc_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DcUpdateModel _$DcUpdateModelFromJson(Map<String, dynamic> json) =>
    DcUpdateModel(
      containerName: json['containerName'] as String,
      progress: (json['progress'] as num).toInt(),
      createDate: (json['createDate'] as num).toInt(),
      id: json['id'] as String,
      content: json['content'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$DcUpdateModelToJson(DcUpdateModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'containerName': instance.containerName,
      'progress': instance.progress,
      'createDate': instance.createDate,
      'id': instance.id,
      'isDone': instance.isDone,
    };
