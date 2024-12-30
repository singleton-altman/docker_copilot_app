// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dc_version_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DcVersionInfo _$DcVersionInfoFromJson(Map<String, dynamic> json) {
  return _DcVersionInfo.fromJson(json);
}

/// @nodoc
mixin _$DcVersionInfo {
  @JsonKey(name: "buildDate")
  String get buildDate => throw _privateConstructorUsedError;
  @JsonKey(name: "version")
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcVersionInfoCopyWith<DcVersionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcVersionInfoCopyWith<$Res> {
  factory $DcVersionInfoCopyWith(
          DcVersionInfo value, $Res Function(DcVersionInfo) then) =
      _$DcVersionInfoCopyWithImpl<$Res, DcVersionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: "buildDate") String buildDate,
      @JsonKey(name: "version") String version});
}

/// @nodoc
class _$DcVersionInfoCopyWithImpl<$Res, $Val extends DcVersionInfo>
    implements $DcVersionInfoCopyWith<$Res> {
  _$DcVersionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildDate = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      buildDate: null == buildDate
          ? _value.buildDate
          : buildDate // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DcVersionInfoImplCopyWith<$Res>
    implements $DcVersionInfoCopyWith<$Res> {
  factory _$$DcVersionInfoImplCopyWith(
          _$DcVersionInfoImpl value, $Res Function(_$DcVersionInfoImpl) then) =
      __$$DcVersionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buildDate") String buildDate,
      @JsonKey(name: "version") String version});
}

/// @nodoc
class __$$DcVersionInfoImplCopyWithImpl<$Res>
    extends _$DcVersionInfoCopyWithImpl<$Res, _$DcVersionInfoImpl>
    implements _$$DcVersionInfoImplCopyWith<$Res> {
  __$$DcVersionInfoImplCopyWithImpl(
      _$DcVersionInfoImpl _value, $Res Function(_$DcVersionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buildDate = null,
    Object? version = null,
  }) {
    return _then(_$DcVersionInfoImpl(
      buildDate: null == buildDate
          ? _value.buildDate
          : buildDate // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcVersionInfoImpl implements _DcVersionInfo {
  const _$DcVersionInfoImpl(
      {@JsonKey(name: "buildDate") required this.buildDate,
      @JsonKey(name: "version") required this.version});

  factory _$DcVersionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcVersionInfoImplFromJson(json);

  @override
  @JsonKey(name: "buildDate")
  final String buildDate;
  @override
  @JsonKey(name: "version")
  final String version;

  @override
  String toString() {
    return 'DcVersionInfo(buildDate: $buildDate, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcVersionInfoImpl &&
            (identical(other.buildDate, buildDate) ||
                other.buildDate == buildDate) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buildDate, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcVersionInfoImplCopyWith<_$DcVersionInfoImpl> get copyWith =>
      __$$DcVersionInfoImplCopyWithImpl<_$DcVersionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcVersionInfoImplToJson(
      this,
    );
  }
}

abstract class _DcVersionInfo implements DcVersionInfo {
  const factory _DcVersionInfo(
          {@JsonKey(name: "buildDate") required final String buildDate,
          @JsonKey(name: "version") required final String version}) =
      _$DcVersionInfoImpl;

  factory _DcVersionInfo.fromJson(Map<String, dynamic> json) =
      _$DcVersionInfoImpl.fromJson;

  @override
  @JsonKey(name: "buildDate")
  String get buildDate;
  @override
  @JsonKey(name: "version")
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$DcVersionInfoImplCopyWith<_$DcVersionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
