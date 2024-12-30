// To parse this JSON data, do
//
//     final dcConfig = dcConfigFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_config.freezed.dart';
part 'dc_config.g.dart';

DcConfig dcConfigFromJson(String str) => DcConfig.fromJson(json.decode(str));

String dcConfigToJson(DcConfig data) => json.encode(data.toJson());

@freezed
class DcConfig with _$DcConfig {
  const factory DcConfig({
    @JsonKey(name: "host") required String host,
    @JsonKey(name: "securityKey") required String securityKey,
  }) = _DcConfig;

  factory DcConfig.fromJson(Map<String, dynamic> json) =>
      _$DcConfigFromJson(json);
}
