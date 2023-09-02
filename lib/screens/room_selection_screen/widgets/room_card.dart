import 'package:best_tours_app/screens/widgets/image_carousel.dart';
import 'package:best_tours_app/screens/widgets/main_button.dart';
import 'package:flutter/material.dart';

import '../../../data/models/hotel/hotel.dart';
import '../../../data/models/room/room.dart';
import '../../reservation_screen/reservation_screen.dart';
import '../../widgets/peculiarities_grid.dart';
import 'about_room_button.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({super.key, required this.room, required this.hotel});
  final Room room;
  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCarousel(imageUrls: room.imageUrls),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              room.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          PeculiaritiesGrid(peculiarities: room.peculiarities),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: AboutRoomButton(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${room.price} ₽ ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' ${room.pricePer}',
                    style: const TextStyle(
                      color: Color(0xFF828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          MainButton(
              title: 'Выбрать номер',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ReservationScreen(
                    hotel: hotel,
                    room: room,
                  ),
                ));
              })
        ],
      ),
    );
  }
}
