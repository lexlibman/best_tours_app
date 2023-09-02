import 'dart:convert';

import 'package:best_tours_app/data/models/hotel/hotel.dart';
import 'package:http/http.dart' as http;

class HotelRepo {
  final url = 'https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3';

  Future<Hotel> getHotel() async {
    try {
      var response = await http.get(Uri.parse(url));
      var hotelJson = await json.decode(response.body) as Map<String, dynamic>;

      Hotel hotel = Hotel(
        id: hotelJson['id'],
        name: hotelJson['name'],
        adress: hotelJson['adress'],
        priceForIt: hotelJson['price_for_it'],
        minimalPrice: hotelJson['minimal_price'],
        rating: hotelJson['rating'],
        ratingName: hotelJson['rating_name'],
        imageUrls: hotelJson['image_urls'],
        description: hotelJson['about_the_hotel']['description'],
        peculiarities: hotelJson['about_the_hotel']['peculiarities'],
      );
      return hotel;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
