import 'package:flutter/material.dart';

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
            color: const Color(0xFFFBFBFC),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            item,
            style: const TextStyle(
              color: Color(0xFF828796),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }
}
