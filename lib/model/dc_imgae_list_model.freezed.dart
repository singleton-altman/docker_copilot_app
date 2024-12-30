// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dc_imgae_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DcImgaeListModel _$DcImgaeListModelFromJson(Map<String, dynamic> json) {
  return _DcImgaeListModel.fromJson(json);
}

/// @nodoc
mixin _$DcImgaeListModel {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  String get size => throw _privateConstructorUsedError;
  @JsonKey(name: "inUsed")
  bool get inUsed => throw _privateConstructorUsedError;
  @JsonKey(name: "createTime")
  String get createTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcImgaeListModelCopyWith<DcImgaeListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcImgaeListModelCopyWith<$Res> {
  factory $DcImgaeListModelCopyWith(
          DcImgaeListModel value, $Res Function(DcImgaeListModel) then) =
      _$DcImgaeListModelCopyWithImpl<$Res, DcImgaeListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "size") String size,
      @JsonKey(name: "inUsed") bool inUsed,
      @JsonKey(name: "createTime") String createTime});
}

/// @nodoc
class _$DcImgaeListModelCopyWithImpl<$Res, $Val extends DcImgaeListModel>
    implements $DcImgaeListModelCopyWith<$Res> {
  _$DcImgaeListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = freezed,
    Object? size = null,
    Object? inUsed = null,
    Object? createTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      inUsed: null == inUsed
          ? _value.inUsed
          : inUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DcImgaeListModelImplCopyWith<$Res>
    implements $DcImgaeListModelCopyWith<$Res> {
  factory _$$DcImgaeListModelImplCopyWith(_$DcImgaeListModelImpl value,
          $Res Function(_$DcImgaeListModelImpl) then) =
      __$$DcImgaeListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "size") String size,
      @JsonKey(name: "inUsed") bool inUsed,
      @JsonKey(name: "createTime") String createTime});
}

/// @nodoc
class __$$DcImgaeListModelImplCopyWithImpl<$Res>
    extends _$DcImgaeListModelCopyWithImpl<$Res, _$DcImgaeListModelImpl>
    implements _$$DcImgaeListModelImplCopyWith<$Res> {
  __$$DcImgaeListModelImplCopyWithImpl(_$DcImgaeListModelImpl _value,
      $Res Function(_$DcImgaeListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? tag = freezed,
    Object? size = null,
    Object? inUsed = null,
    Object? createTime = null,
  }) {
    return _then(_$DcImgaeListModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      inUsed: null == inUsed
          ? _value.inUsed
          : inUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      createTime: null == createTime
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcImgaeListModelImpl implements _DcImgaeListModel {
  const _$DcImgaeListModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "tag") required this.tag,
      @JsonKey(name: "size") required this.size,
      @JsonKey(name: "inUsed") required this.inUsed,
      @JsonKey(name: "createTime") required this.createTime});

  factory _$DcImgaeListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcImgaeListModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "tag")
  final String? tag;
  @override
  @JsonKey(name: "size")
  final String size;
  @override
  @JsonKey(name: "inUsed")
  final bool inUsed;
  @override
  @JsonKey(name: "createTime")
  final String createTime;

  @override
  String toString() {
    return 'DcImgaeListModel(id: $id, name: $name, tag: $tag, size: $size, inUsed: $inUsed, createTime: $createTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcImgaeListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.inUsed, inUsed) || other.inUsed == inUsed) &&
            (identical(other.createTime, createTime) ||
                other.createTime == createTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, tag, size, inUsed, createTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcImgaeListModelImplCopyWith<_$DcImgaeListModelImpl> get copyWith =>
      __$$DcImgaeListModelImplCopyWithImpl<_$DcImgaeListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcImgaeListModelImplToJson(
      this,
    );
  }
}

abstract class _DcImgaeListModel implements DcImgaeListModel {
  const factory _DcImgaeListModel(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "tag") required final String? tag,
          @JsonKey(name: "size") required final String size,
          @JsonKey(name: "inUsed") required final bool inUsed,
          @JsonKey(name: "createTime") required final String createTime}) =
      _$DcImgaeListModelImpl;

  factory _DcImgaeListModel.fromJson(Map<String, dynamic> json) =
      _$DcImgaeListModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "tag")
  String? get tag;
  @override
  @JsonKey(name: "size")
  String get size;
  @override
  @JsonKey(name: "inUsed")
  bool get inUsed;
  @override
  @JsonKey(name: "createTime")
  String get createTime;
  @override
  @JsonKey(ignore: true)
  _$$DcImgaeListModelImplCopyWith<_$DcImgaeListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
