// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomEvent {
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
    required TResult Function(RoomEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomEventFetchCopyWith<$Res> {
  factory _$$RoomEventFetchCopyWith(
          _$RoomEventFetch value, $Res Function(_$RoomEventFetch) then) =
      __$$RoomEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomEventFetchCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$RoomEventFetch>
    implements _$$RoomEventFetchCopyWith<$Res> {
  __$$RoomEventFetchCopyWithImpl(
      _$RoomEventFetch _value, $Res Function(_$RoomEventFetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomEventFetch implements RoomEventFetch {
  const _$RoomEventFetch();

  @override
  String toString() {
    return 'RoomEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomEventFetch);
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
    required TResult Function(RoomEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class RoomEventFetch implements RoomEvent {
  const factory RoomEventFetch() = _$RoomEventFetch;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Room> roomsLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Room> roomsLoaded)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Room> roomsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoading value)? loading,
    TResult? Function(RoomStateLoaded value)? loaded,
    TResult? Function(RoomStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomStateLoadingCopyWith<$Res> {
  factory _$$RoomStateLoadingCopyWith(
          _$RoomStateLoading value, $Res Function(_$RoomStateLoading) then) =
      __$$RoomStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateLoadingCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoading>
    implements _$$RoomStateLoadingCopyWith<$Res> {
  __$$RoomStateLoadingCopyWithImpl(
      _$RoomStateLoading _value, $Res Function(_$RoomStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomStateLoading implements RoomStateLoading {
  const _$RoomStateLoading();

  @override
  String toString() {
    return 'RoomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Room> roomsLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Room> roomsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Room> roomsLoaded)? loaded,
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
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoading value)? loading,
    TResult? Function(RoomStateLoaded value)? loaded,
    TResult? Function(RoomStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoading implements RoomState {
  const factory RoomStateLoading() = _$RoomStateLoading;
}

/// @nodoc
abstract class _$$RoomStateLoadedCopyWith<$Res> {
  factory _$$RoomStateLoadedCopyWith(
          _$RoomStateLoaded value, $Res Function(_$RoomStateLoaded) then) =
      __$$RoomStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Room> roomsLoaded});
}

/// @nodoc
class __$$RoomStateLoadedCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateLoaded>
    implements _$$RoomStateLoadedCopyWith<$Res> {
  __$$RoomStateLoadedCopyWithImpl(
      _$RoomStateLoaded _value, $Res Function(_$RoomStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomsLoaded = null,
  }) {
    return _then(_$RoomStateLoaded(
      roomsLoaded: null == roomsLoaded
          ? _value._roomsLoaded
          : roomsLoaded // ignore: cast_nullable_to_non_nullable
              as List<Room>,
    ));
  }
}

/// @nodoc

class _$RoomStateLoaded implements RoomStateLoaded {
  const _$RoomStateLoaded({required final List<Room> roomsLoaded})
      : _roomsLoaded = roomsLoaded;

  final List<Room> _roomsLoaded;
  @override
  List<Room> get roomsLoaded {
    if (_roomsLoaded is EqualUnmodifiableListView) return _roomsLoaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomsLoaded);
  }

  @override
  String toString() {
    return 'RoomState.loaded(roomsLoaded: $roomsLoaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._roomsLoaded, _roomsLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_roomsLoaded));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStateLoadedCopyWith<_$RoomStateLoaded> get copyWith =>
      __$$RoomStateLoadedCopyWithImpl<_$RoomStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Room> roomsLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(roomsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Room> roomsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(roomsLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Room> roomsLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(roomsLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoading value)? loading,
    TResult? Function(RoomStateLoaded value)? loaded,
    TResult? Function(RoomStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RoomStateLoaded implements RoomState {
  const factory RoomStateLoaded({required final List<Room> roomsLoaded}) =
      _$RoomStateLoaded;

  List<Room> get roomsLoaded;
  @JsonKey(ignore: true)
  _$$RoomStateLoadedCopyWith<_$RoomStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStateErrorCopyWith<$Res> {
  factory _$$RoomStateErrorCopyWith(
          _$RoomStateError value, $Res Function(_$RoomStateError) then) =
      __$$RoomStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateErrorCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateError>
    implements _$$RoomStateErrorCopyWith<$Res> {
  __$$RoomStateErrorCopyWithImpl(
      _$RoomStateError _value, $Res Function(_$RoomStateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomStateError implements RoomStateError {
  const _$RoomStateError();

  @override
  String toString() {
    return 'RoomState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Room> roomsLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Room> roomsLoaded)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Room> roomsLoaded)? loaded,
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
    required TResult Function(RoomStateLoading value) loading,
    required TResult Function(RoomStateLoaded value) loaded,
    required TResult Function(RoomStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateLoading value)? loading,
    TResult? Function(RoomStateLoaded value)? loaded,
    TResult? Function(RoomStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateLoading value)? loading,
    TResult Function(RoomStateLoaded value)? loaded,
    TResult Function(RoomStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RoomStateError implements RoomState {
  const factory RoomStateError() = _$RoomStateError;
}
