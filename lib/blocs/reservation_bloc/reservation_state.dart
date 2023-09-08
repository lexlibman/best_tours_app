part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.loading() = ReservationStateLoading;
  const factory ReservationState.loaded({
    required ReservationData reservationDataLoaded,
  }) = ReservationStateLoaded;
  const factory ReservationState.error() = ReservationStateError;
}
