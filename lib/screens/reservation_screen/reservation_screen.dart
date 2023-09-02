import 'package:best_tours_app/screens/reservation_screen/widgets/info_card.dart';
import 'package:best_tours_app/screens/widgets/hotel_card.dart';
import 'package:flutter/material.dart';

import '../../data/models/hotel/hotel.dart';
import '../../data/models/room/room.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key, required this.hotel, required this.room});

  final Hotel hotel;
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Бронирование',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 8),
          HotelCard(
            hotel: hotel,
            showImages: false,
            showPrice: false,
          ),
          const SizedBox(height: 8),
          InfoCard(
            hotel: hotel,
            room: room,
          ),
        ],
      ),
    );
  }
}
