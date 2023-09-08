import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class AboutRoomButton extends StatelessWidget {
  const AboutRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: constants.accentColor.withOpacity(0.10),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Подробнее о номере ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: constants.accentColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.20,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: constants.accentColor,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
