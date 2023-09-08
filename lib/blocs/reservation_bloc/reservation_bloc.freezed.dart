// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEventCopyWith<$Res> {
  factory $ReservationEventCopyWith(
          ReservationEvent value, $Res Function(ReservationEvent) then) =
      _$ReservationEventCopyWithImpl<$Res, ReservationEvent>;
}

/// @nodoc
class _$ReservationEventCopyWithImpl<$Res, $Val extends ReservationEvent>
    implements $ReservationEventCopyWith<$Res> {
  _$ReservationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReservationEventFetchCopyWith<$Res> {
  factory _$$ReservationEventFetchCopyWith(_$ReservationEventFetch value,
          $Res Function(_$ReservationEventFetch) then) =
      __$$ReservationEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservationEventFetchCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res, _$ReservationEventFetch>
    implements _$$ReservationEventFetchCopyWith<$Res> {
  __$$ReservationEventFetchCopyWithImpl(_$ReservationEventFetch _value,
      $Res Function(_$ReservationEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservationEventFetch implements ReservationEventFetch {
  const _$ReservationEventFetch();

  @override
  String toString() {
    return 'ReservationEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReservationEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ReservationEventFetch implements ReservationEvent {
  const factory ReservationEventFetch() = _$ReservationEventFetch;
}

/// @nodoc
mixin _$ReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationData reservationDataLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationData reservationDataLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationData reservationDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStateLoading value) loading,
    required TResult Function(ReservationStateLoaded value) loaded,
    required TResult Function(ReservationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStateLoading value)? loading,
    TResult? Function(ReservationStateLoaded value)? loaded,
    TResult? Function(ReservationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStateLoading value)? loading,
    TResult Function(ReservationStateLoaded value)? loaded,
    TResult Function(ReservationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res, ReservationState>;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res, $Val extends ReservationState>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReservationStateLoadingCopyWith<$Res> {
  factory _$$ReservationStateLoadingCopyWith(_$ReservationStateLoading value,
          $Res Function(_$ReservationStateLoading) then) =
      __$$ReservationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservationStateLoadingCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationStateLoading>
    implements _$$ReservationStateLoadingCopyWith<$Res> {
  __$$ReservationStateLoadingCopyWithImpl(_$ReservationStateLoading _value,
      $Res Function(_$ReservationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservationStateLoading implements ReservationStateLoading {
  const _$ReservationStateLoading();

  @override
  String toString() {
    return 'ReservationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationData reservationDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationData reservationDataLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationData reservationDataLoaded)? loaded,
    TResult Function()? error,
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
    required TResult Function(ReservationStateLoading value) loading,
    required TResult Function(ReservationStateLoaded value) loaded,
    required TResult Function(ReservationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStateLoading value)? loading,
    TResult? Function(ReservationStateLoaded value)? loaded,
    TResult? Function(ReservationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStateLoading value)? loading,
    TResult Function(ReservationStateLoaded value)? loaded,
    TResult Function(ReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReservationStateLoading implements ReservationState {
  const factory ReservationStateLoading() = _$ReservationStateLoading;
}

/// @nodoc
abstract class _$$ReservationStateLoadedCopyWith<$Res> {
  factory _$$ReservationStateLoadedCopyWith(_$ReservationStateLoaded value,
          $Res Function(_$ReservationStateLoaded) then) =
      __$$ReservationStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ReservationData reservationDataLoaded});

  $ReservationDataCopyWith<$Res> get reservationDataLoaded;
}

/// @nodoc
class __$$ReservationStateLoadedCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationStateLoaded>
    implements _$$ReservationStateLoadedCopyWith<$Res> {
  __$$ReservationStateLoadedCopyWithImpl(_$ReservationStateLoaded _value,
      $Res Function(_$ReservationStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reservationDataLoaded = null,
  }) {
    return _then(_$ReservationStateLoaded(
      reservationDataLoaded: null == reservationDataLoaded
          ? _value.reservationDataLoaded
          : reservationDataLoaded // ignore: cast_nullable_to_non_nullable
              as ReservationData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReservationDataCopyWith<$Res> get reservationDataLoaded {
    return $ReservationDataCopyWith<$Res>(_value.reservationDataLoaded,
        (value) {
      return _then(_value.copyWith(reservationDataLoaded: value));
    });
  }
}

/// @nodoc

class _$ReservationStateLoaded implements ReservationStateLoaded {
  const _$ReservationStateLoaded({required this.reservationDataLoaded});

  @override
  final ReservationData reservationDataLoaded;

  @override
  String toString() {
    return 'ReservationState.loaded(reservationDataLoaded: $reservationDataLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationStateLoaded &&
            (identical(other.reservationDataLoaded, reservationDataLoaded) ||
                other.reservationDataLoaded == reservationDataLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservationDataLoaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationStateLoadedCopyWith<_$ReservationStateLoaded> get copyWith =>
      __$$ReservationStateLoadedCopyWithImpl<_$ReservationStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationData reservationDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(reservationDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationData reservationDataLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(reservationDataLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationData reservationDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reservationDataLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStateLoading value) loading,
    required TResult Function(ReservationStateLoaded value) loaded,
    required TResult Function(ReservationStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStateLoading value)? loading,
    TResult? Function(ReservationStateLoaded value)? loaded,
    TResult? Function(ReservationStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStateLoading value)? loading,
    TResult Function(ReservationStateLoaded value)? loaded,
    TResult Function(ReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ReservationStateLoaded implements ReservationState {
  const factory ReservationStateLoaded(
          {required final ReservationData reservationDataLoaded}) =
      _$ReservationStateLoaded;

  ReservationData get reservationDataLoaded;
  @JsonKey(ignore: true)
  _$$ReservationStateLoadedCopyWith<_$ReservationStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReservationStateErrorCopyWith<$Res> {
  factory _$$ReservationStateErrorCopyWith(_$ReservationStateError value,
          $Res Function(_$ReservationStateError) then) =
      __$$ReservationStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReservationStateErrorCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res, _$ReservationStateError>
    implements _$$ReservationStateErrorCopyWith<$Res> {
  __$$ReservationStateErrorCopyWithImpl(_$ReservationStateError _value,
      $Res Function(_$ReservationStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReservationStateError implements ReservationStateError {
  const _$ReservationStateError();

  @override
  String toString() {
    return 'ReservationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReservationStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ReservationData reservationDataLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(ReservationData reservationDataLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ReservationData reservationDataLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReservationStateLoading value) loading,
    required TResult Function(ReservationStateLoaded value) loaded,
    required TResult Function(ReservationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReservationStateLoading value)? loading,
    TResult? Function(ReservationStateLoaded value)? loaded,
    TResult? Function(ReservationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReservationStateLoading value)? loading,
    TResult Function(ReservationStateLoaded value)? loaded,
    TResult Function(ReservationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ReservationStateError implements ReservationState {
  const factory ReservationStateError() = _$ReservationStateError;
}
