import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/hotel/hotel.dart';
import '../../widgets/peculiarities_grid.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class AboutHotelCard extends StatelessWidget {
  const AboutHotelCard({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Об отеле',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 12),
            child: PeculiaritiesGrid(peculiarities: hotel.peculiarities),
          ),
          Text(
            hotel.description,
            style: constants.displaySmall,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 185,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: constants.pecuBackgroundColor,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AboutCard(
                    imageAsset: 'assets/icons/emoji-happy.svg',
                    title: 'Удобства',
                  ),
                  Divider(indent: 41),
                  AboutCard(
                    imageAsset: 'assets/icons/tick-square.svg',
                    title: 'Что включено',
                  ),
                  Divider(indent: 41),
                  AboutCard(
                    imageAsset: 'assets/icons/close-square.svg',
                    title: 'Что не включено',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AboutCard extends StatelessWidget {
  const AboutCard({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(imageAsset),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: constants.displaySmall.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Самое необходимое',
                  style: constants.headlineSmall.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 20,
        ),
      ],
    );
  }
}
