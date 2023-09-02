import 'package:best_tours_app/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:best_tours_app/data/repositories/hotel_repo/hotel_repo.dart';
import 'package:best_tours_app/screens/hotel_screen/hotel_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final hotelRepo = HotelRepo();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HotelBloc(hotelRepo: hotelRepo),
        child: const HotelScreen(),
      ),
    );
  }
}
