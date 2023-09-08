import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
class Room with _$Room {
  const factory Room({
    required int id,
    required String name,
    required int price,
    required String pricePer,
    required List<String> imageUrls,
    required List<String> peculiarities,
  }) = _Room;

  factory Room.fromJson(dynamic json) => _$RoomFromJson(json);
}
