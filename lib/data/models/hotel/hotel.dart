import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    required int id,
    required String name,
    required String adress,
    required String priceForIt,
    required int minimalPrice,
    required int rating,
    required String ratingName,
    required List imageUrls,
    required String description,
    required List peculiarities,
  }) = _Hotel;

  factory Hotel.fromJson(dynamic json) => _$HotelFromJson(json);
}
