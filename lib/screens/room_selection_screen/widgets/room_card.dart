import 'package:best_tours_app/blocs/reservation_bloc/reservation_bloc.dart';
import 'package:best_tours_app/data/repositories/reservation_repo/reservation_repo.dart';
import 'package:best_tours_app/screens/widgets/image_carousel.dart';
import 'package:best_tours_app/screens/widgets/main_button.dart';
import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/room/room.dart';
import '../../reservation_screen/reservation_form_bloc/reservation_form_bloc.dart';
import '../../reservation_screen/reservation_screen.dart';
import '../../widgets/peculiarities_grid.dart';
import 'about_room_button.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

class RoomCard extends StatelessWidget {
  RoomCard({
    super.key,
    required this.room,
  });
  final Room room;

  final reservationRepo = ReservationRepo();

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCarousel(imageUrls: room.imageUrls),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              room.name,
              style: constants.headlineMedium,
            ),
          ),
          PeculiaritiesGrid(peculiarities: room.peculiarities),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: AboutRoomButton(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${room.price} ₽ ',
                    style: constants.headlineLarge,
                  ),
                  TextSpan(
                    text: ' ${room.pricePer}',
                    style: constants.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          MainButton(
              title: 'Выбрать номер',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) =>
                            ReservationBloc(reservationRepo: reservationRepo),
                      ),
                      BlocProvider(
                        create: (context) => ReservationFormBloc(),
                      ),
                    ],
                    child: const ReservationScreen(),
                  ),
                ));
              })
        ],
      ),
    );
  }
}
