// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dc_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DcResponse _$DcResponseFromJson(Map<String, dynamic> json) {
  return _DcResponse.fromJson(json);
}

/// @nodoc
mixin _$DcResponse {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcResponseCopyWith<DcResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcResponseCopyWith<$Res> {
  factory $DcResponseCopyWith(
          DcResponse value, $Res Function(DcResponse) then) =
      _$DcResponseCopyWithImpl<$Res, DcResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "msg") String msg,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class _$DcResponseCopyWithImpl<$Res, $Val extends DcResponse>
    implements $DcResponseCopyWith<$Res> {
  _$DcResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DcResponseImplCopyWith<$Res>
    implements $DcResponseCopyWith<$Res> {
  factory _$$DcResponseImplCopyWith(
          _$DcResponseImpl value, $Res Function(_$DcResponseImpl) then) =
      __$$DcResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "msg") String msg,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class __$$DcResponseImplCopyWithImpl<$Res>
    extends _$DcResponseCopyWithImpl<$Res, _$DcResponseImpl>
    implements _$$DcResponseImplCopyWith<$Res> {
  __$$DcResponseImplCopyWithImpl(
      _$DcResponseImpl _value, $Res Function(_$DcResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_$DcResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcResponseImpl implements _DcResponse {
  const _$DcResponseImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "msg") required this.msg,
      @JsonKey(name: "data") required this.data});

  factory _$DcResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcResponseImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "msg")
  final String msg;
  @override
  @JsonKey(name: "data")
  final dynamic data;

  @override
  String toString() {
    return 'DcResponse(code: $code, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, msg, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcResponseImplCopyWith<_$DcResponseImpl> get copyWith =>
      __$$DcResponseImplCopyWithImpl<_$DcResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcResponseImplToJson(
      this,
    );
  }
}

abstract class _DcResponse implements DcResponse {
  const factory _DcResponse(
      {@JsonKey(name: "code") required final int code,
      @JsonKey(name: "msg") required final String msg,
      @JsonKey(name: "data") required final dynamic data}) = _$DcResponseImpl;

  factory _DcResponse.fromJson(Map<String, dynamic> json) =
      _$DcResponseImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "msg")
  String get msg;
  @override
  @JsonKey(name: "data")
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$DcResponseImplCopyWith<_$DcResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl();

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;
}
