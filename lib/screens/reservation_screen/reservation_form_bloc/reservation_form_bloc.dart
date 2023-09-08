import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class ReservationFormBloc extends FormBloc<String, String> {
  final phone = TextFieldBloc(validators: [
    FieldBlocValidators.required,
    (value) {
      Pattern pattern = r'^\+7 \(\d{3}\) \d{3}-\d{2}-\d{2}$';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value)) {
        return '';
      } else {
        return null;
      }
    },
  ]);
  final email = TextFieldBloc(
    validators: [FieldBlocValidators.email, FieldBlocValidators.required],
  );

  final tourists = ListFieldBloc<TouristFieldBloc, dynamic>(name: 'tourists');

  ReservationFormBloc() {
    addFieldBlocs(
      fieldBlocs: [
        phone,
        email,
        tourists,
      ],
    );
  }

  int touristIndex = 0;

  void addTourist() {
    if (touristIndex < 10) {
      try {
        tourists.addFieldBloc(TouristFieldBloc(
          firstName: TextFieldBloc(validators: [FieldBlocValidators.required]),
          lastName: TextFieldBloc(validators: [FieldBlocValidators.required]),
          birthDay: TextFieldBloc(validators: [FieldBlocValidators.required]),
          nationality:
              TextFieldBloc(validators: [FieldBlocValidators.required]),
          passportNumber:
              TextFieldBloc(validators: [FieldBlocValidators.required]),
          passportUntil:
              TextFieldBloc(validators: [FieldBlocValidators.required]),
        ));
        touristIndex++;
      } on Exception catch (_) {}
    }
  }

  void removeLastTourist() {
    if (touristIndex > 1) {
      try {
        tourists.removeFieldBlocAt(touristIndex - 1);
        touristIndex--;
      } on Exception catch (_) {}
    }
  }

  Future<bool> checkValidation() async {
    return (await email.validate() &&
        await phone.validate() &&
        await tourists.validate());
  }

  @override
  void onSubmitting() async {
    emitSuccess();
  }
}

class TouristFieldBloc extends GroupFieldBloc {
  final TextFieldBloc firstName;
  final TextFieldBloc lastName;
  final TextFieldBloc birthDay;
  final TextFieldBloc nationality;
  final TextFieldBloc passportNumber;
  final TextFieldBloc passportUntil;

  TouristFieldBloc({
    required this.firstName,
    required this.lastName,
    required this.birthDay,
    required this.nationality,
    required this.passportNumber,
    required this.passportUntil,
    String? name,
  }) : super(name: name, fieldBlocs: [
          firstName,
          lastName,
          birthDay,
          nationality,
          passportNumber,
          passportUntil,
        ]);
}
