import 'package:best_tours_app/screens/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Заказ оплачен',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF6F6F9)),
                child: Image.asset(
                  'assets/icons/success.png',
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "Ваш заказ принят в работу",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828796),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        title: 'Супер!',
        onPressed: () {
          Navigator.of(context)
              .popUntil((route) => !Navigator.of(context).canPop());
        },
      ),
    );
  }
}
