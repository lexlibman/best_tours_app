import 'package:best_tours_app/screens/reservation_screen/reservation_form_bloc/reservation_form_bloc.dart';
import 'package:best_tours_app/screens/widgets/main_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'custom_text_field.dart';

class UserInfoForm extends StatelessWidget {
  UserInfoForm({super.key, required this.resFormBloc});

  final ReservationFormBloc resFormBloc;

  final phoneMaskFormatter = MaskTextInputFormatter(
    mask: '+7 (###) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReservationFormBloc(),
      child: Builder(builder: (context) {
        return MainContainer(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Информация о покупателе",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  textFieldBloc: resFormBloc.phone,
                  label: 'Номер телефона',
                  hint: '+7 (***) ***-**-**',
                  maskFormatters: [phoneMaskFormatter],
                  keyboardType: TextInputType.phone,
                ),
                CustomTextField(
                  textFieldBloc: resFormBloc.email,
                  label: 'Почта',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 4),
                const Text(
                  "Эти данные никому не передаются. После оплаты мы вышлем чек на указанный вами номер и почту",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff828796),
                  ),
                )
              ],
            ));
      }),
    );
  }
}
