import 'package:best_tours_app/blocs/room_bloc/room_bloc.dart';
import 'package:best_tours_app/screens/room_selection_screen/widgets/room_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class RoomSelectionScreen extends StatelessWidget {
  const RoomSelectionScreen({
    super.key,
    required this.hotelName,
  });

  final String hotelName;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RoomBloc>();
    return Scaffold(
      backgroundColor: constants.scaffoldBackground,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: constants.mainContainerColor,
        elevation: 0,
        title: Text(
          hotelName,
          style: constants.appBarTitleStyle,
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
