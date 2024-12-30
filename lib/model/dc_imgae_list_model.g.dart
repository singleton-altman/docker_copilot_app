// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dc_imgae_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DcImgaeListModelImpl _$$DcImgaeListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DcImgaeListModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      tag: json['tag'] as String?,
      size: json['size'] as String,
      inUsed: json['inUsed'] as bool,
      createTime: json['createTime'] as String,
    );

Map<String, dynamic> _$$DcImgaeListModelImplToJson(
        _$DcImgaeListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'size': instance.size,
      'inUsed': instance.inUsed,
      'createTime': instance.createTime,
    };
