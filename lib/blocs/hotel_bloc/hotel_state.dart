part of 'hotel_bloc.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.loading() = HotelStateLoading;
  const factory HotelState.loaded({required Hotel hotelLoaded}) =
      HotelStateLoaded;
  const factory HotelState.error() = HotelStateError;
}
