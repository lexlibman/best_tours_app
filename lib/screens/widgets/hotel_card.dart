import 'package:flutter/material.dart';

import 'image_carousel.dart';
import 'rating_lable.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    this.imageUrls,
    required this.rating,
    required this.ratingName,
    required this.hotelName,
    required this.hotelAdress,
    this.hotelMinimalPrice,
    this.hotelPriceForIt,
  });

  final List<String>? imageUrls;
  final int rating;
  final String ratingName;
  final String hotelName;
  final String hotelAdress;
  final int? hotelMinimalPrice;
  final String? hotelPriceForIt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: constants.mainContainerColor,
        borderRadius: imageUrls != null
            ? const BorderRadius.vertical(
                bottom: Radius.circular(12),
              )
            : BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imageUrls != null
              ? ImageCarousel(imageUrls: imageUrls)
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: RatingLabel(
              rating: rating,
              ratingName: ratingName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              hotelName,
              style: constants.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                hotelAdress,
                style: const TextStyle(
                  color: constants.accentColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          hotelMinimalPrice != null && hotelPriceForIt != null
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'от $hotelMinimalPrice ₽ ',
                          style: constants.headlineLarge,
                        ),
                        TextSpan(
                          text: ' $hotelPriceForIt',
                          style: constants.headlineSmall,
                        )
                      ],
                    ),
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
