import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class MainContainer extends StatelessWidget {
  const MainContainer({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: padding,
      decoration: BoxDecoration(
        color: constants.mainContainerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
