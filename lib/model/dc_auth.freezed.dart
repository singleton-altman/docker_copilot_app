// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dc_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DcAuth _$DcAuthFromJson(Map<String, dynamic> json) {
  return _DcAuth.fromJson(json);
}

/// @nodoc
mixin _$DcAuth {
  @JsonKey(name: "jwt")
  String? get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcAuthCopyWith<DcAuth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcAuthCopyWith<$Res> {
  factory $DcAuthCopyWith(DcAuth value, $Res Function(DcAuth) then) =
      _$DcAuthCopyWithImpl<$Res, DcAuth>;
  @useResult
  $Res call({@JsonKey(name: "jwt") String? jwt});
}

/// @nodoc
class _$DcAuthCopyWithImpl<$Res, $Val extends DcAuth>
    implements $DcAuthCopyWith<$Res> {
  _$DcAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = freezed,
  }) {
    return _then(_value.copyWith(
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DcAuthImplCopyWith<$Res> implements $DcAuthCopyWith<$Res> {
  factory _$$DcAuthImplCopyWith(
          _$DcAuthImpl value, $Res Function(_$DcAuthImpl) then) =
      __$$DcAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "jwt") String? jwt});
}

/// @nodoc
class __$$DcAuthImplCopyWithImpl<$Res>
    extends _$DcAuthCopyWithImpl<$Res, _$DcAuthImpl>
    implements _$$DcAuthImplCopyWith<$Res> {
  __$$DcAuthImplCopyWithImpl(
      _$DcAuthImpl _value, $Res Function(_$DcAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = freezed,
  }) {
    return _then(_$DcAuthImpl(
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcAuthImpl implements _DcAuth {
  const _$DcAuthImpl({@JsonKey(name: "jwt") required this.jwt});

  factory _$DcAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcAuthImplFromJson(json);

  @override
  @JsonKey(name: "jwt")
  final String? jwt;

  @override
  String toString() {
    return 'DcAuth(jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcAuthImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcAuthImplCopyWith<_$DcAuthImpl> get copyWith =>
      __$$DcAuthImplCopyWithImpl<_$DcAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcAuthImplToJson(
      this,
    );
  }
}

abstract class _DcAuth implements DcAuth {
  const factory _DcAuth({@JsonKey(name: "jwt") required final String? jwt}) =
      _$DcAuthImpl;

  factory _DcAuth.fromJson(Map<String, dynamic> json) = _$DcAuthImpl.fromJson;

  @override
  @JsonKey(name: "jwt")
  String? get jwt;
  @override
  @JsonKey(ignore: true)
  _$$DcAuthImplCopyWith<_$DcAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "jwt")
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "jwt") String jwt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "jwt") String jwt});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
  }) {
    return _then(_$DataImpl(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "jwt") required this.jwt});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "jwt")
  final String jwt;

  @override
  String toString() {
    return 'Data(jwt: $jwt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({@JsonKey(name: "jwt") required final String jwt}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "jwt")
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
