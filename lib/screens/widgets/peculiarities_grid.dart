import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class PeculiaritiesGrid extends StatelessWidget {
  final List peculiarities;

  const PeculiaritiesGrid({super.key, required this.peculiarities});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: peculiarities.map((dynamic item) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            color: constants.pecuBackgroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            item,
            style: const TextStyle(
              color: constants.pecuTextColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }
}
