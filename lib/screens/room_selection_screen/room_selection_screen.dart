import 'package:best_tours_app/blocs/room_bloc/room_bloc.dart';
import 'package:best_tours_app/screens/room_selection_screen/widgets/room_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/hotel/hotel.dart';

class RoomSelectionScreen extends StatelessWidget {
  const RoomSelectionScreen({super.key, required this.hotel});

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RoomBloc>();
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F9),
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          hotel.name,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: bloc.state.when(
        loading: () {
          bloc.add(const RoomEvent.fetch());
          return const Center(child: CircularProgressIndicator());
        },
        loaded: (roomsLoaded) {
          return ListView.builder(
            itemCount: roomsLoaded.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: RoomCard(
                  room: roomsLoaded[index],
                  hotel: hotel,
                ),
              );
            },
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'),
      ),
    );
  }
}
