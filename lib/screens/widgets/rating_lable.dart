import 'package:flutter/material.dart';

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
            color: const Color(0x30FFA800),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Color(0xFFFFA800),
            ),
            Text(
              '$rating $ratingName',
              style: const TextStyle(
                color: Color(0xFFFFA800),
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
