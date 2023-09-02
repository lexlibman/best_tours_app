import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/room/room.dart';
import '../../data/repositories/room_repo/room_repo.dart';

part 'room_event.dart';
part 'room_state.dart';
part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final RoomRepo roomRepo;
  RoomBloc({required this.roomRepo}) : super(const RoomState.loading()) {
    on<RoomEventFetch>((event, emit) async {
      emit(const RoomState.loading());
      try {
        List<Room> roomsLoaded = await roomRepo.getRooms();
        emit(RoomState.loaded(roomsLoaded: roomsLoaded));
      } catch (e) {
        emit(const RoomState.error());
      }
    });
  }
}
