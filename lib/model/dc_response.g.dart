// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DcResponseImpl _$$DcResponseImplFromJson(Map<String, dynamic> json) =>
    _$DcResponseImpl(
      code: (json['code'] as num).toInt(),
      msg: json['msg'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$$DcResponseImplToJson(_$DcResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl();

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{};
