import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class RatingLabel extends StatelessWidget {
  const RatingLabel({
    super.key,
    required this.rating,
    required this.ratingName,
  });

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: constants.ratingBackgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: constants.ratingLabelColor,
            ),
            Text(
              '$rating $ratingName',
              style: const TextStyle(
                color: constants.ratingLabelColor,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
