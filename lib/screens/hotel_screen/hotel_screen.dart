import 'package:best_tours_app/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:best_tours_app/blocs/room_bloc/room_bloc.dart';
import 'package:best_tours_app/data/repositories/room_repo/room_repo.dart';
import 'package:best_tours_app/screens/hotel_screen/widgets/about_hotel_card.dart';
import 'package:best_tours_app/screens/room_selection_screen/room_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/hotel/hotel.dart';
import '../widgets/main_button.dart';
import '../widgets/hotel_card.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late final Hotel hotel;
  final roomRepo = RoomRepo();
  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<HotelBloc>();
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Отель',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: bloc.state.when(
        loading: () {
          bloc.add(const HotelEvent.fetch());
          return const Center(child: CircularProgressIndicator());
        },
        loaded: (hotelLoaded) {
          hotel = hotelLoaded;
          return ListView(
            children: [
              HotelCard(
                hotel: hotel,
                showImages: true,
                showPrice: true,
              ),
              const SizedBox(height: 8),
              AboutHotelCard(hotel: hotel),
            ],
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          children: [
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFE8E9EC),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  MainButton(
                    title: 'К выбору номера',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlocProvider(
                          create: (context) => RoomBloc(roomRepo: roomRepo),
                          child: RoomSelectionScreen(
                            hotel: hotel,
                          ),
                        ),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
