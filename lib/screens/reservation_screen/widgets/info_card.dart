import 'package:flutter/material.dart';

import '../../../data/models/hotel/hotel.dart';
import '../../../data/models/room/room.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.hotel, required this.room});

  final Hotel hotel;
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            const InfoRow(
              title: 'Вылет из',
              text: 'Санкт-Петербург',
            ),
            const InfoRow(
              title: 'Страна, город',
              text: 'Египет, Хургада',
            ),
            const InfoRow(
              title: 'Даты',
              text: '19.09.2023 – 27.09.2023',
            ),
            const InfoRow(
              title: 'Кол-во ночей',
              text: '7 ночей',
            ),
            InfoRow(
              title: 'Отель',
              text: hotel.name,
            ),
            InfoRow(
              title: 'Номер',
              text: room.name,
            ),
            InfoRow(
              title: 'Питание',
              text: room.peculiarities[0],
            ),
          ],
        ));
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.title, required this.text});

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828796),
                  height: 19 / 16,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
                height: 19 / 16,
              ),
              textAlign: TextAlign.left,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
