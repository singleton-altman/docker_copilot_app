// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dc_container_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DcContainerListModelImpl _$$DcContainerListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DcContainerListModelImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      name: json['name'] as String,
      usingImage: json['usingImage'] as String,
      createImage: json['createImage'] as String,
      createTime: json['createTime'] as String,
      runningTime: json['runningTime'] as String,
      haveUpdate: json['haveUpdate'] as bool,
    );

Map<String, dynamic> _$$DcContainerListModelImplToJson(
        _$DcContainerListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'name': instance.name,
      'usingImage': instance.usingImage,
      'createImage': instance.createImage,
      'createTime': instance.createTime,
      'runningTime': instance.runningTime,
      'haveUpdate': instance.haveUpdate,
    };
