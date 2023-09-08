import 'package:best_tours_app/assets/constant.dart' as constants;
import 'package:best_tours_app/blocs/hotel_bloc/hotel_bloc.dart';
import 'package:best_tours_app/blocs/room_bloc/room_bloc.dart';
import 'package:best_tours_app/data/repositories/room_repo/room_repo.dart';
import 'package:best_tours_app/screens/hotel_screen/widgets/about_hotel_card.dart';
import 'package:best_tours_app/screens/room_selection_screen/room_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/hotel_card.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  final roomRepo = RoomRepo();
  @override
  Widget build(BuildContext context) {
    var hotelName = 'Выбор номера';
    final bloc = context.watch<HotelBloc>();
    return Scaffold(
      backgroundColor: constants.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: constants.mainContainerColor,
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
        loaded: (hotel) {
          hotelName = hotel.name;
          return ListView(
            children: [
              HotelCard(
                rating: hotel.rating,
                ratingName: hotel.ratingName,
                hotelName: hotel.name,
                hotelAdress: hotel.adress,
                imageUrls: hotel.imageUrls,
                hotelMinimalPrice: hotel.minimalPrice,
                hotelPriceForIt: hotel.priceForIt,
              ),
              const SizedBox(height: 8),
              AboutHotelCard(hotel: hotel),
            ],
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'),
      ),
      bottomNavigationBar: BottomBar(
        title: 'К выбору номера',
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BlocProvider(
              create: (context) => RoomBloc(roomRepo: roomRepo),
              child: RoomSelectionScreen(
                hotelName: hotelName,
              ),
            ),
          ));
        },
      ),
    );
  }
}
