part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.loading() = RoomStateLoading;
  const factory RoomState.loaded({required List<Room> roomsLoaded}) =
      RoomStateLoaded;
  const factory RoomState.error() = RoomStateError;
}
