import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_data.freezed.dart';
part 'reservation_data.g.dart';

@freezed
class ReservationData with _$ReservationData {
  const factory ReservationData({
    required int id,
    required String hotelName,
    required String hotelAdress,
    required int horating,
    required String ratingName,
    required String departure,
    required String arrivalCountry,
    required String tourDateStart,
    required String tourDateStop,
    required int numberOfNights,
    required String room,
    required String nutrition,
    required int tourPrice,
    required int fuelCharge,
    required int serviceCharge,
  }) = _ReservationData;

  factory ReservationData.fromJson(dynamic json) =>
      _$ReservationDataFromJson(json);
}
