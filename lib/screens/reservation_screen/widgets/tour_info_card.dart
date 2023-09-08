import 'package:best_tours_app/data/models/reservation_data/reservation_data.dart';
import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.reservationData,
  });

  final ReservationData reservationData;

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      padding: const EdgeInsets.only(top: 4, left: 16, right: 16),
      child: Column(
        children: [
          InfoRow(
            title: 'Вылет из',
            text: reservationData.departure,
          ),
          InfoRow(
            title: 'Страна, город',
            text: reservationData.arrivalCountry,
          ),
          InfoRow(
            title: 'Даты',
            text:
                '${reservationData.tourDateStart} - ${reservationData.tourDateStop}',
          ),
          InfoRow(
            title: 'Кол-во ночей',
            text: reservationData.numberOfNights.toString(),
          ),
          InfoRow(
            title: 'Отель',
            text: reservationData.hotelName,
          ),
          InfoRow(
            title: 'Номер',
            text: reservationData.room,
          ),
          InfoRow(
            title: 'Питание',
            text: reservationData.nutrition,
          ),
        ],
      ),
    );
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
            child: Text(
              title,
              style: constants.headlineSmall,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: constants.displaySmall,
              textAlign: TextAlign.left,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
