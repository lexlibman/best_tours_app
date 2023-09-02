import 'package:flutter/material.dart';

import '../../data/models/hotel/hotel.dart';
import 'image_carousel.dart';
import 'rating_lable.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.hotel,
    required this.showImages,
    required this.showPrice,
  });

  final Hotel hotel;
  final bool showImages;
  final bool showPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: showImages
            ? const BorderRadius.vertical(
                bottom: Radius.circular(12),
              )
            : BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showImages
              ? ImageCarousel(imageUrls: hotel.imageUrls)
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: RatingLabel(
              rating: hotel.rating,
              ratingName: hotel.ratingName,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              hotel.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {},
              child: Text(
                hotel.adress,
                style: const TextStyle(
                  color: Color(0xFF0D72FF),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          showPrice
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'от ${hotel.minimalPrice} ₽ ',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: ' ${hotel.priceForIt}',
                          style: const TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
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
