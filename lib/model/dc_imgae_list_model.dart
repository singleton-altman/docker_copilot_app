// To parse this JSON data, do
//
//     final dcImgaeListModel = dcImgaeListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'dc_imgae_list_model.freezed.dart';
part 'dc_imgae_list_model.g.dart';

DcImgaeListModel dcImgaeListModelFromJson(String str) =>
    DcImgaeListModel.fromJson(json.decode(str));

String dcImgaeListModelToJson(DcImgaeListModel data) =>
    json.encode(data.toJson());

@freezed
class DcImgaeListModel with _$DcImgaeListModel {
  const factory DcImgaeListModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "tag") required String? tag,
    @JsonKey(name: "size") required String size,
    @JsonKey(name: "inUsed") required bool inUsed,
    @JsonKey(name: "createTime") required String createTime,
  }) = _DcImgaeListModel;

  factory DcImgaeListModel.fromJson(Map<String, dynamic> json) =>
      _$DcImgaeListModelFromJson(json);
}
