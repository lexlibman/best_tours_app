import 'package:best_tours_app/screens/widgets/main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:best_tours_app/assets/constant.dart' as constants;

import '../reservation_form_bloc/reservation_form_bloc.dart';
import 'custom_text_field.dart';

const touristsOrder = [
  'Первый',
  'Второй',
  'Третий',
  'Четвертый',
  'Пятый',
  'Шестой',
  'Седьмой',
  'Восьмой',
  'Девятый',
  'Десятый',
];

class TouristCard extends StatefulWidget {
  const TouristCard({
    super.key,
    required this.touristField,
    required this.touristIndex,
  });

  final int touristIndex;
  final TouristFieldBloc touristField;

  @override
  State<TouristCard> createState() => _TouristCardState();
}

class _TouristCardState extends State<TouristCard> {
  bool isOpen = false;

  final dateMaskFormatter = MaskTextInputFormatter(
    mask: '**.**.****',
    filter: {"*": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  void checkValidation() async {
    await widget.touristField.validate();
  }

  void openCloseForm() {
    setState(() {
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    checkValidation();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: MainContainer(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${touristsOrder[widget.touristIndex]} турист',
                    style: constants.headlineMedium),
                GestureDetector(
                  onTap: openCloseForm,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: constants.accentColor.withOpacity(0.10),
                    ),
                    child: RotatedBox(
                      quarterTurns: isOpen ? 1 : 3,
                      child: const Icon(
                        Icons.arrow_back_ios_rounded,
                        color: constants.accentColor,
                        size: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          isOpen
              ? BlocBuilder<ReservationFormBloc, FormBlocState>(
                  builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        CustomTextField(
                          textFieldBloc: widget.touristField.firstName,
                          label: 'Имя',
                        ),
                        CustomTextField(
                          textFieldBloc: widget.touristField.lastName,
                          label: 'Фамилия',
                        ),
                        CustomTextField(
                          textFieldBloc: widget.touristField.birthDay,
                          label: 'Дата рождения',
                          hint: 'ДД.ММ.ГГГГ',
                          keyboardType: TextInputType.datetime,
                          maskFormatters: [dateMaskFormatter],
                        ),
                        CustomTextField(
                          textFieldBloc: widget.touristField.nationality,
                          label: 'Гражданство',
                        ),
                        CustomTextField(
                          textFieldBloc: widget.touristField.passportNumber,
                          label: 'Номер загранпаспорта',
                        ),
                        CustomTextField(
                          textFieldBloc: widget.touristField.passportUntil,
                          label: 'Срок действия загранпаспорта',
                          hint: 'ДД.ММ.ГГГГ',
                          keyboardType: TextInputType.datetime,
                          maskFormatters: [dateMaskFormatter],
                        ),
                      ],
                    ),
                  );
                })
              : const SizedBox(),
        ]),
      ),
    );
  }
}
