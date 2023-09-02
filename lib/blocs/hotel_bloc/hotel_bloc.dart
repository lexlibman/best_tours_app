import 'package:best_tours_app/data/repositories/hotel_repo/hotel_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/hotel/hotel.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';
part 'hotel_bloc.freezed.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  final HotelRepo hotelRepo;
  HotelBloc({required this.hotelRepo}) : super(const HotelState.loading()) {
    on<HotelEventFetch>((event, emit) async {
      emit(const HotelState.loading());
      try {
        Hotel hotelLoaded = await hotelRepo.getHotel();
        emit(HotelState.loaded(hotelLoaded: hotelLoaded));
      } catch (e) {
        emit(const HotelState.error());
      }
    });
  }
}
