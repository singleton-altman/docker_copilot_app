// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dc_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DcConfig _$DcConfigFromJson(Map<String, dynamic> json) {
  return _DcConfig.fromJson(json);
}

/// @nodoc
mixin _$DcConfig {
  @JsonKey(name: "host")
  String get host => throw _privateConstructorUsedError;
  @JsonKey(name: "securityKey")
  String get securityKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcConfigCopyWith<DcConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcConfigCopyWith<$Res> {
  factory $DcConfigCopyWith(DcConfig value, $Res Function(DcConfig) then) =
      _$DcConfigCopyWithImpl<$Res, DcConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: "host") String host,
      @JsonKey(name: "securityKey") String securityKey});
}

/// @nodoc
class _$DcConfigCopyWithImpl<$Res, $Val extends DcConfig>
    implements $DcConfigCopyWith<$Res> {
  _$DcConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? securityKey = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      securityKey: null == securityKey
          ? _value.securityKey
          : securityKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DcConfigImplCopyWith<$Res>
    implements $DcConfigCopyWith<$Res> {
  factory _$$DcConfigImplCopyWith(
          _$DcConfigImpl value, $Res Function(_$DcConfigImpl) then) =
      __$$DcConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "host") String host,
      @JsonKey(name: "securityKey") String securityKey});
}

/// @nodoc
class __$$DcConfigImplCopyWithImpl<$Res>
    extends _$DcConfigCopyWithImpl<$Res, _$DcConfigImpl>
    implements _$$DcConfigImplCopyWith<$Res> {
  __$$DcConfigImplCopyWithImpl(
      _$DcConfigImpl _value, $Res Function(_$DcConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? securityKey = null,
  }) {
    return _then(_$DcConfigImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      securityKey: null == securityKey
          ? _value.securityKey
          : securityKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcConfigImpl implements _DcConfig {
  const _$DcConfigImpl(
      {@JsonKey(name: "host") required this.host,
      @JsonKey(name: "securityKey") required this.securityKey});

  factory _$DcConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcConfigImplFromJson(json);

  @override
  @JsonKey(name: "host")
  final String host;
  @override
  @JsonKey(name: "securityKey")
  final String securityKey;

  @override
  String toString() {
    return 'DcConfig(host: $host, securityKey: $securityKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcConfigImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.securityKey, securityKey) ||
                other.securityKey == securityKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, host, securityKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcConfigImplCopyWith<_$DcConfigImpl> get copyWith =>
      __$$DcConfigImplCopyWithImpl<_$DcConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcConfigImplToJson(
      this,
    );
  }
}

abstract class _DcConfig implements DcConfig {
  const factory _DcConfig(
          {@JsonKey(name: "host") required final String host,
          @JsonKey(name: "securityKey") required final String securityKey}) =
      _$DcConfigImpl;

  factory _DcConfig.fromJson(Map<String, dynamic> json) =
      _$DcConfigImpl.fromJson;

  @override
  @JsonKey(name: "host")
  String get host;
  @override
  @JsonKey(name: "securityKey")
  String get securityKey;
  @override
  @JsonKey(ignore: true)
  _$$DcConfigImplCopyWith<_$DcConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
