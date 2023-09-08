import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import '../../../assets/constant.dart' as constants;

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.textFieldBloc,
    this.hint,
    this.maskFormatters,
    this.onEditingComplete,
    this.keyboardType,
    this.onTap,
    this.fillColor,
  });

  final String label;
  final TextFieldBloc<dynamic> textFieldBloc;
  final Color? fillColor;
  final String? hint;
  final List<TextInputFormatter>? maskFormatters;
  final void Function()? onEditingComplete;

  final TextInputType? keyboardType;
  final void Function()? onTap;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  late Color fillColor;
  bool isValid = true;
  void checkValidation() async {
    isValid = await widget.textFieldBloc.validate();
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldBlocBuilder(
      key: _formKey,
      focusOnValidationFailed: true,
      padding: const EdgeInsets.symmetric(vertical: 4),
      keyboardType: widget.keyboardType,
      cursorColor: constants.textFieldLableColor,
      inputFormatters: widget.maskFormatters,
      textFieldBloc: widget.textFieldBloc,
      onTap: widget.onTap,
      onChanged: (value) {
        setState(() {
          if (widget.textFieldBloc.state.isValid) {
            isValid = true;
          }
        });
      },
      errorBuilder: (context, error) {
        checkValidation();
        return '';
      },
      decoration: InputDecoration(
        errorMaxLines: 1,
        errorText: '',
        errorStyle: const TextStyle(
          color: Colors.transparent,
          fontSize: 0,
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        labelText: widget.label,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelStyle:
            const TextStyle(color: constants.textFieldLableColor),
        hintText: widget.hint,
        filled: true,
        fillColor: isValid
            ? constants.textFieldNormalColor
            : constants.textFieldErrorColor,
      ),
    );
  }
}
