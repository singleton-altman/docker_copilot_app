import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_version_info.freezed.dart';
part 'dc_version_info.g.dart';

// To parse this JSON data, do
//
//     final dcVersionInfo = dcVersionInfoFromJson(jsonString);

DcVersionInfo dcVersionInfoFromJson(String str) =>
    DcVersionInfo.fromJson(json.decode(str));

String dcVersionInfoToJson(DcVersionInfo data) => json.encode(data.toJson());

@freezed
class DcVersionInfo with _$DcVersionInfo {
  const factory DcVersionInfo({
    @JsonKey(name: "buildDate") required String buildDate,
    @JsonKey(name: "version") required String version,
  }) = _DcVersionInfo;

  factory DcVersionInfo.fromJson(Map<String, dynamic> json) =>
      _$DcVersionInfoFromJson(json);
}
