// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() none,
    required TResult Function(
            String message, String? code, StackTrace? stackTrace)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? none,
    TResult? Function(String message, String? code, StackTrace? stackTrace)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? none,
    TResult Function(String message, String? code, StackTrace? stackTrace)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultNone<T> value) none,
    required TResult Function(ResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultNone<T> value)? none,
    TResult? Function(ResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultNone<T> value)? none,
    TResult Function(ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<T, $Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl<T> value, $Res Function(_$ResultDataImpl<T>) then) =
      __$$ResultDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultDataImpl<T>>
    implements _$$ResultDataImplCopyWith<T, $Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl<T> _value, $Res Function(_$ResultDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultDataImpl<T> implements ResultData<T> {
  const _$ResultDataImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<T, _$ResultDataImpl<T>> get copyWith =>
      __$$ResultDataImplCopyWithImpl<T, _$ResultDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() none,
    required TResult Function(
            String message, String? code, StackTrace? stackTrace)
        failure,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? none,
    TResult? Function(String message, String? code, StackTrace? stackTrace)?
        failure,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? none,
    TResult Function(String message, String? code, StackTrace? stackTrace)?
        failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultNone<T> value) none,
    required TResult Function(ResultFailure<T> value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultNone<T> value)? none,
    TResult? Function(ResultFailure<T> value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultNone<T> value)? none,
    TResult Function(ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ResultData<T> implements Result<T> {
  const factory ResultData(final T data) = _$ResultDataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<T, _$ResultDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultNoneImplCopyWith<T, $Res> {
  factory _$$ResultNoneImplCopyWith(
          _$ResultNoneImpl<T> value, $Res Function(_$ResultNoneImpl<T>) then) =
      __$$ResultNoneImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultNoneImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultNoneImpl<T>>
    implements _$$ResultNoneImplCopyWith<T, $Res> {
  __$$ResultNoneImplCopyWithImpl(
      _$ResultNoneImpl<T> _value, $Res Function(_$ResultNoneImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultNoneImpl<T> implements ResultNone<T> {
  const _$ResultNoneImpl();

  @override
  String toString() {
    return 'Result<$T>.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultNoneImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() none,
    required TResult Function(
            String message, String? code, StackTrace? stackTrace)
        failure,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? none,
    TResult? Function(String message, String? code, StackTrace? stackTrace)?
        failure,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? none,
    TResult Function(String message, String? code, StackTrace? stackTrace)?
        failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultNone<T> value) none,
    required TResult Function(ResultFailure<T> value) failure,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultNone<T> value)? none,
    TResult? Function(ResultFailure<T> value)? failure,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultNone<T> value)? none,
    TResult Function(ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class ResultNone<T> implements Result<T> {
  const factory ResultNone() = _$ResultNoneImpl<T>;
}

/// @nodoc
abstract class _$$ResultFailureImplCopyWith<T, $Res> {
  factory _$$ResultFailureImplCopyWith(_$ResultFailureImpl<T> value,
          $Res Function(_$ResultFailureImpl<T>) then) =
      __$$ResultFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message, String? code, StackTrace? stackTrace});
}

/// @nodoc
class __$$ResultFailureImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultFailureImpl<T>>
    implements _$$ResultFailureImplCopyWith<T, $Res> {
  __$$ResultFailureImplCopyWithImpl(_$ResultFailureImpl<T> _value,
      $Res Function(_$ResultFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ResultFailureImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ResultFailureImpl<T> implements ResultFailure<T> {
  const _$ResultFailureImpl(this.message, {this.code, this.stackTrace});

  @override
  final String message;
  @override
  final String? code;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T>.failure(message: $message, code: $code, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultFailureImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      __$$ResultFailureImplCopyWithImpl<T, _$ResultFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() none,
    required TResult Function(
            String message, String? code, StackTrace? stackTrace)
        failure,
  }) {
    return failure(message, code, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? none,
    TResult? Function(String message, String? code, StackTrace? stackTrace)?
        failure,
  }) {
    return failure?.call(message, code, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? none,
    TResult Function(String message, String? code, StackTrace? stackTrace)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, code, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultNone<T> value) none,
    required TResult Function(ResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultNone<T> value)? none,
    TResult? Function(ResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultNone<T> value)? none,
    TResult Function(ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ResultFailure<T> implements Result<T> {
  const factory ResultFailure(final String message,
      {final String? code,
      final StackTrace? stackTrace}) = _$ResultFailureImpl<T>;

  String get message;
  String? get code;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$ResultFailureImplCopyWith<T, _$ResultFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
