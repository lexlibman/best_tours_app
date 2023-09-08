import 'package:best_tours_app/data/models/reservation_data/reservation_data.dart';
import 'package:best_tours_app/data/repositories/reservation_repo/reservation_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final ReservationRepo reservationRepo;
  ReservationBloc({required this.reservationRepo})
      : super(const ReservationState.loading()) {
    on<ReservationEventFetch>((event, emit) async {
      emit(const ReservationState.loading());
      try {
        ReservationData reservationDataLoaded =
            await reservationRepo.getReservationData();
        emit(ReservationState.loaded(
            reservationDataLoaded: reservationDataLoaded));
      } catch (e) {
        emit(const ReservationState.error());
      }
    });
  }
}
