// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IpState {
  Result<String> get ip => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IpStateCopyWith<IpState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpStateCopyWith<$Res> {
  factory $IpStateCopyWith(IpState value, $Res Function(IpState) then) =
      _$IpStateCopyWithImpl<$Res, IpState>;
  @useResult
  $Res call({Result<String> ip});

  $ResultCopyWith<String, $Res> get ip;
}

/// @nodoc
class _$IpStateCopyWithImpl<$Res, $Val extends IpState>
    implements $IpStateCopyWith<$Res> {
  _$IpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Result<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<String, $Res> get ip {
    return $ResultCopyWith<String, $Res>(_value.ip, (value) {
      return _then(_value.copyWith(ip: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IpStateImplCopyWith<$Res> implements $IpStateCopyWith<$Res> {
  factory _$$IpStateImplCopyWith(
          _$IpStateImpl value, $Res Function(_$IpStateImpl) then) =
      __$$IpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result<String> ip});

  @override
  $ResultCopyWith<String, $Res> get ip;
}

/// @nodoc
class __$$IpStateImplCopyWithImpl<$Res>
    extends _$IpStateCopyWithImpl<$Res, _$IpStateImpl>
    implements _$$IpStateImplCopyWith<$Res> {
  __$$IpStateImplCopyWithImpl(
      _$IpStateImpl _value, $Res Function(_$IpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
  }) {
    return _then(_$IpStateImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as Result<String>,
    ));
  }
}

/// @nodoc

class _$IpStateImpl implements _IpState {
  const _$IpStateImpl({required this.ip});

  @override
  final Result<String> ip;

  @override
  String toString() {
    return 'IpState(ip: $ip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpStateImpl &&
            (identical(other.ip, ip) || other.ip == ip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpStateImplCopyWith<_$IpStateImpl> get copyWith =>
      __$$IpStateImplCopyWithImpl<_$IpStateImpl>(this, _$identity);
}

abstract class _IpState implements IpState {
  const factory _IpState({required final Result<String> ip}) = _$IpStateImpl;

  @override
  Result<String> get ip;
  @override
  @JsonKey(ignore: true)
  _$$IpStateImplCopyWith<_$IpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
