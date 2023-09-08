import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/reservation_data/reservation_data.dart';

class ReservationRepo {
  final url = 'https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8';

  Future<ReservationData> getReservationData() async {
    try {
      var response = await http.get(Uri.parse(url));
      var reservationDataJson =
          await json.decode(response.body) as Map<String, dynamic>;

      ReservationData reservationData = ReservationData(
        id: reservationDataJson['id'],
        hotelName: reservationDataJson['hotel_name'],
        hotelAdress: reservationDataJson['hotel_adress'],
        horating: reservationDataJson['horating'],
        ratingName: reservationDataJson['rating_name'],
        departure: reservationDataJson['departure'],
        arrivalCountry: reservationDataJson['arrival_country'],
        tourDateStart: reservationDataJson['tour_date_start'],
        tourDateStop: reservationDataJson['tour_date_stop'],
        numberOfNights: reservationDataJson['number_of_nights'],
        room: reservationDataJson['room'],
        nutrition: reservationDataJson['nutrition'],
        tourPrice: reservationDataJson['tour_price'],
        fuelCharge: reservationDataJson['fuel_charge'],
        serviceCharge: reservationDataJson['service_charge'],
      );
      return reservationData;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
