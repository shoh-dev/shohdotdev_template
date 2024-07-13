// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redux_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReduxState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReduxStateInitial<T> value) initial,
    required TResult Function(ReduxStateLoading<T> value) loading,
    required TResult Function(ReduxStateSuccess<T> value) success,
    required TResult Function(ReduxStateFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReduxStateInitial<T> value)? initial,
    TResult? Function(ReduxStateLoading<T> value)? loading,
    TResult? Function(ReduxStateSuccess<T> value)? success,
    TResult? Function(ReduxStateFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReduxStateInitial<T> value)? initial,
    TResult Function(ReduxStateLoading<T> value)? loading,
    TResult Function(ReduxStateSuccess<T> value)? success,
    TResult Function(ReduxStateFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReduxStateCopyWith<T, $Res> {
  factory $ReduxStateCopyWith(
          ReduxState<T> value, $Res Function(ReduxState<T>) then) =
      _$ReduxStateCopyWithImpl<T, $Res, ReduxState<T>>;
}

/// @nodoc
class _$ReduxStateCopyWithImpl<T, $Res, $Val extends ReduxState<T>>
    implements $ReduxStateCopyWith<T, $Res> {
  _$ReduxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReduxStateInitialImplCopyWith<T, $Res> {
  factory _$$ReduxStateInitialImplCopyWith(_$ReduxStateInitialImpl<T> value,
          $Res Function(_$ReduxStateInitialImpl<T>) then) =
      __$$ReduxStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReduxStateInitialImplCopyWithImpl<T, $Res>
    extends _$ReduxStateCopyWithImpl<T, $Res, _$ReduxStateInitialImpl<T>>
    implements _$$ReduxStateInitialImplCopyWith<T, $Res> {
  __$$ReduxStateInitialImplCopyWithImpl(_$ReduxStateInitialImpl<T> _value,
      $Res Function(_$ReduxStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReduxStateInitialImpl<T> implements ReduxStateInitial<T> {
  const _$ReduxStateInitialImpl();

  @override
  String toString() {
    return 'ReduxState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReduxStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReduxStateInitial<T> value) initial,
    required TResult Function(ReduxStateLoading<T> value) loading,
    required TResult Function(ReduxStateSuccess<T> value) success,
    required TResult Function(ReduxStateFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReduxStateInitial<T> value)? initial,
    TResult? Function(ReduxStateLoading<T> value)? loading,
    TResult? Function(ReduxStateSuccess<T> value)? success,
    TResult? Function(ReduxStateFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReduxStateInitial<T> value)? initial,
    TResult Function(ReduxStateLoading<T> value)? loading,
    TResult Function(ReduxStateSuccess<T> value)? success,
    TResult Function(ReduxStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReduxStateInitial<T> implements ReduxState<T> {
  const factory ReduxStateInitial() = _$ReduxStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$ReduxStateLoadingImplCopyWith<T, $Res> {
  factory _$$ReduxStateLoadingImplCopyWith(_$ReduxStateLoadingImpl<T> value,
          $Res Function(_$ReduxStateLoadingImpl<T>) then) =
      __$$ReduxStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReduxStateLoadingImplCopyWithImpl<T, $Res>
    extends _$ReduxStateCopyWithImpl<T, $Res, _$ReduxStateLoadingImpl<T>>
    implements _$$ReduxStateLoadingImplCopyWith<T, $Res> {
  __$$ReduxStateLoadingImplCopyWithImpl(_$ReduxStateLoadingImpl<T> _value,
      $Res Function(_$ReduxStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReduxStateLoadingImpl<T> implements ReduxStateLoading<T> {
  const _$ReduxStateLoadingImpl();

  @override
  String toString() {
    return 'ReduxState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReduxStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReduxStateInitial<T> value) initial,
    required TResult Function(ReduxStateLoading<T> value) loading,
    required TResult Function(ReduxStateSuccess<T> value) success,
    required TResult Function(ReduxStateFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReduxStateInitial<T> value)? initial,
    TResult? Function(ReduxStateLoading<T> value)? loading,
    TResult? Function(ReduxStateSuccess<T> value)? success,
    TResult? Function(ReduxStateFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReduxStateInitial<T> value)? initial,
    TResult Function(ReduxStateLoading<T> value)? loading,
    TResult Function(ReduxStateSuccess<T> value)? success,
    TResult Function(ReduxStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReduxStateLoading<T> implements ReduxState<T> {
  const factory ReduxStateLoading() = _$ReduxStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ReduxStateSuccessImplCopyWith<T, $Res> {
  factory _$$ReduxStateSuccessImplCopyWith(_$ReduxStateSuccessImpl<T> value,
          $Res Function(_$ReduxStateSuccessImpl<T>) then) =
      __$$ReduxStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ReduxStateSuccessImplCopyWithImpl<T, $Res>
    extends _$ReduxStateCopyWithImpl<T, $Res, _$ReduxStateSuccessImpl<T>>
    implements _$$ReduxStateSuccessImplCopyWith<T, $Res> {
  __$$ReduxStateSuccessImplCopyWithImpl(_$ReduxStateSuccessImpl<T> _value,
      $Res Function(_$ReduxStateSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReduxStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ReduxStateSuccessImpl<T> implements ReduxStateSuccess<T> {
  const _$ReduxStateSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ReduxState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReduxStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReduxStateSuccessImplCopyWith<T, _$ReduxStateSuccessImpl<T>>
      get copyWith =>
          __$$ReduxStateSuccessImplCopyWithImpl<T, _$ReduxStateSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReduxStateInitial<T> value) initial,
    required TResult Function(ReduxStateLoading<T> value) loading,
    required TResult Function(ReduxStateSuccess<T> value) success,
    required TResult Function(ReduxStateFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReduxStateInitial<T> value)? initial,
    TResult? Function(ReduxStateLoading<T> value)? loading,
    TResult? Function(ReduxStateSuccess<T> value)? success,
    TResult? Function(ReduxStateFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReduxStateInitial<T> value)? initial,
    TResult Function(ReduxStateLoading<T> value)? loading,
    TResult Function(ReduxStateSuccess<T> value)? success,
    TResult Function(ReduxStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ReduxStateSuccess<T> implements ReduxState<T> {
  const factory ReduxStateSuccess(final T data) = _$ReduxStateSuccessImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ReduxStateSuccessImplCopyWith<T, _$ReduxStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReduxStateFailureImplCopyWith<T, $Res> {
  factory _$$ReduxStateFailureImplCopyWith(_$ReduxStateFailureImpl<T> value,
          $Res Function(_$ReduxStateFailureImpl<T>) then) =
      __$$ReduxStateFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ReduxStateFailureImplCopyWithImpl<T, $Res>
    extends _$ReduxStateCopyWithImpl<T, $Res, _$ReduxStateFailureImpl<T>>
    implements _$$ReduxStateFailureImplCopyWith<T, $Res> {
  __$$ReduxStateFailureImplCopyWithImpl(_$ReduxStateFailureImpl<T> _value,
      $Res Function(_$ReduxStateFailureImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ReduxStateFailureImpl<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ReduxStateFailureImpl<T> implements ReduxStateFailure<T> {
  const _$ReduxStateFailureImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ReduxState<$T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReduxStateFailureImpl<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReduxStateFailureImplCopyWith<T, _$ReduxStateFailureImpl<T>>
      get copyWith =>
          __$$ReduxStateFailureImplCopyWithImpl<T, _$ReduxStateFailureImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReduxStateInitial<T> value) initial,
    required TResult Function(ReduxStateLoading<T> value) loading,
    required TResult Function(ReduxStateSuccess<T> value) success,
    required TResult Function(ReduxStateFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReduxStateInitial<T> value)? initial,
    TResult? Function(ReduxStateLoading<T> value)? loading,
    TResult? Function(ReduxStateSuccess<T> value)? success,
    TResult? Function(ReduxStateFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReduxStateInitial<T> value)? initial,
    TResult Function(ReduxStateLoading<T> value)? loading,
    TResult Function(ReduxStateSuccess<T> value)? success,
    TResult Function(ReduxStateFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ReduxStateFailure<T> implements ReduxState<T> {
  const factory ReduxStateFailure(final Failure failure) =
      _$ReduxStateFailureImpl<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ReduxStateFailureImplCopyWith<T, _$ReduxStateFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
