// To parse this JSON data, do
//
//     final dcResponse = dcResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_response.freezed.dart';
part 'dc_response.g.dart';

DcResponse dcResponseFromJson(String str) =>
    DcResponse.fromJson(json.decode(str));

String dcResponseToJson(DcResponse data) => json.encode(data.toJson());

@freezed
class DcResponse with _$DcResponse {
  const factory DcResponse({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "msg") required String msg,
    @JsonKey(name: "data") required dynamic data,
  }) = _DcResponse;

  factory DcResponse.fromJson(Map<String, dynamic> json) =>
      _$DcResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
