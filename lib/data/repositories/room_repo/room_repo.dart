import 'dart:convert';

import 'package:best_tours_app/data/models/room/room.dart';
import 'package:http/http.dart' as http;

class RoomRepo {
  final url = 'https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd';

  Future<List<Room>> getRooms() async {
    try {
      var response = await http.get(Uri.parse(url));
      var roomsJson = await json.decode(response.body)['rooms'] as List;

      List<Room> rooms = roomsJson
          .map((room) => Room(
                id: room['id'],
                name: room['name'],
                price: room['price'],
                pricePer: room['price_per'],
                peculiarities: List<String>.from(room['peculiarities']),
                imageUrls: List<String>.from(room['image_urls']),
              ))
          .toList();

      return rooms;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
