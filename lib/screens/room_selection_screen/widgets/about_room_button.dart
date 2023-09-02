import 'package:flutter/material.dart';

class AboutRoomButton extends StatelessWidget {
  const AboutRoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0x190D72FF),
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
                  color: Color(0xFF0D72FF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.20,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Color(0xFF0D72FF),
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
