import 'package:best_tours_app/assets/constant.dart';
import 'package:best_tours_app/blocs/reservation_bloc/reservation_bloc.dart';
import 'package:best_tours_app/screens/reservation_screen/reservation_form_bloc/reservation_form_bloc.dart';
import 'package:best_tours_app/screens/reservation_screen/widgets/add_tourist_card.dart';
import 'package:best_tours_app/screens/reservation_screen/widgets/price_card.dart';
import 'package:best_tours_app/screens/reservation_screen/widgets/tour_info_card.dart';
import 'package:best_tours_app/screens/reservation_screen/widgets/tourist_form_card.dart';
import 'package:best_tours_app/screens/reservation_screen/widgets/user_info_form.dart';
import 'package:best_tours_app/screens/widgets/bottom_bar.dart';
import 'package:best_tours_app/screens/widgets/hotel_card.dart';
import 'package:flutter/material.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:intl/intl.dart';

import '../success_screen/success_screen.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    final resDataBloc = context.watch<ReservationBloc>();
    final resFormBloc = context.watch<ReservationFormBloc>();
    int tourPrice;
    int fuelCharge;
    int serviceCharge;
    int totalPrice = 0;
    String formatedTotalPrice = '';
    return BlocBuilder<ListFieldBloc<TouristFieldBloc, dynamic>,
        ListFieldBlocState<TouristFieldBloc, dynamic>>(
      bloc: resFormBloc.tourists,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: const BackButton(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Бронирование',
              style: constants.appBarTitleStyle,
            ),
          ),
          body: resDataBloc.state.when(
            loading: () {
              resDataBloc.add(const ReservationEvent.fetch());
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (resDataLoaded) {
              if (resFormBloc.touristIndex == 0) {
                resFormBloc.addTourist();
              }
              // цена зависит от количества туристов
              tourPrice = resDataLoaded.tourPrice * resFormBloc.touristIndex;
              fuelCharge = resDataLoaded.fuelCharge * resFormBloc.touristIndex;
              serviceCharge =
                  resDataLoaded.serviceCharge * resFormBloc.touristIndex;
              totalPrice = tourPrice +
                  fuelCharge +
                  serviceCharge * resFormBloc.touristIndex;

              String formatedPrice =
                  NumberFormat("#,###", "ru_RU").format(tourPrice);
              String formatedFuelCharge =
                  NumberFormat("#,###", "ru_RU").format(fuelCharge);
              String formatedServiceCharge =
                  NumberFormat("#,###", "ru_RU").format(serviceCharge);
              formatedTotalPrice =
                  NumberFormat("#,###", "ru_RU").format(totalPrice);

              return ListView(
                children: [
                  const SizedBox(height: 8),
                  HotelCard(
                    rating: resDataLoaded.horating,
                    ratingName: resDataLoaded.ratingName,
                    hotelName: resDataLoaded.hotelName,
                    hotelAdress: resDataLoaded.hotelAdress,
                  ),
                  const SizedBox(height: 8),
                  InfoCard(reservationData: resDataLoaded),
                  const SizedBox(height: 8),
                  UserInfoForm(resFormBloc: resFormBloc),
                  const SizedBox(height: 4),
                  state.fieldBlocs.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.fieldBlocs.length,
                          itemBuilder: (context, index) {
                            return TouristCard(
                                touristField: state.fieldBlocs[index],
                                touristIndex: index);
                          },
                        )
                      : const SizedBox(),
                  const SizedBox(height: 4),
                  AddTouristCard(
                      onPressedAdd: resFormBloc.addTourist,
                      onPressedRemove: resFormBloc.removeLastTourist,
                      showRemoveButton: resFormBloc.touristIndex > 1),
                  const SizedBox(height: 8),
                  PriceCard(
                    price: formatedPrice,
                    fuelCharge: formatedFuelCharge,
                    serviceCharge: formatedServiceCharge,
                    totalPrice: formatedTotalPrice,
                  ),
                ],
              );
            },
            error: () => const Text('Отсутствует подключение к сети интернет'),
          ),
          bottomNavigationBar: totalPrice > 0
              ? FormBlocListener<ReservationFormBloc, String, String>(
                  onSubmitting: (context, state) {},
                  onSubmissionFailed: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: textFieldNormalColor,
                        content: Text(
                          'Проверьте правильность данных',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                  onSuccess: (context, state) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => const SuccessScreen()));
                  },
                  onFailure: (context, state) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.failureResponse!)));
                  },
                  child: BottomBar(
                    title: 'Оплатить $formatedTotalPrice ₽',
                    onPressed: resFormBloc.submit,
                  ),
                )
              : const SizedBox(),
        );
      },
    );
  }
}
