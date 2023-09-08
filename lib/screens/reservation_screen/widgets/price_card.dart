import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class PriceCard extends StatelessWidget {
  const PriceCard(
      {super.key,
      required this.price,
      required this.fuelCharge,
      required this.serviceCharge,
      required this.totalPrice});

  final String price;
  final String fuelCharge;
  final String serviceCharge;
  final String totalPrice;

  @override
  Widget build(BuildContext context) {
    return MainContainer(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            PriceRow(
              title: 'Тур',
              price: price,
            ),
            PriceRow(
              title: 'Топливный сбор',
              price: fuelCharge,
            ),
            PriceRow(
              title: 'Сервисный сбор',
              price: serviceCharge,
            ),
            PriceRow(
              title: 'К оплате',
              price: totalPrice,
            ),
          ],
        ));
  }
}

class PriceRow extends StatelessWidget {
  const PriceRow({
    super.key,
    required this.price,
    required this.title,
  });

  final String price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: constants.headlineSmall,
          ),
          Text(
            "$price ₽",
            style: constants.displaySmall,
            textAlign: TextAlign.right,
          )
        ],
      ),
    );
  }
}
