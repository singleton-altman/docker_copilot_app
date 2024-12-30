import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_auth.freezed.dart';
part 'dc_auth.g.dart';

DcAuth dcAuthFromJson(String str) => DcAuth.fromJson(json.decode(str));

String dcAuthToJson(DcAuth data) => json.encode(data.toJson());

@freezed
class DcAuth with _$DcAuth {
  const factory DcAuth({
    @JsonKey(name: "jwt") required String? jwt,
  }) = _DcAuth;

  factory DcAuth.fromJson(Map<String, dynamic> json) => _$DcAuthFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "jwt") required String jwt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
