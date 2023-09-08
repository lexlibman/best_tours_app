import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class AddTouristCard extends StatelessWidget {
  const AddTouristCard({
    super.key,
    required this.onPressedAdd,
    required this.onPressedRemove,
    required this.showRemoveButton,
  });

  final void Function() onPressedAdd;
  final void Function() onPressedRemove;
  final bool showRemoveButton;

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Добавить туриста',
            style: constants.headlineMedium,
          ),
          Row(
            children: [
              showRemoveButton
                  ? GestureDetector(
                      onTap: onPressedRemove,
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: constants.accentColor,
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    )
                  : const SizedBox(),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: onPressedAdd,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: constants.accentColor,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
