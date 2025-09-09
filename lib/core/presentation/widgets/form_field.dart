import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputType? keyBoardType;
  final ValueChanged<String>? onChanged;
  final bool? autocorrect;
  final FormFieldValidator<String>? validator;
  final bool? autofocus;

  const CustomFormField({
    super.key,
    required this.label,
    required this.controller, this.obscureText, this.keyBoardType, this.onChanged, this.autocorrect, this.validator, this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus ?? false,
      controller: controller,
      cursorColor: Theme.of(context).colorScheme.onSurface,
      obscureText: obscureText != null && obscureText == true ? true : false,
      keyboardType: keyBoardType,
      onChanged: onChanged,
      autocorrect: autocorrect ?? false,
      validator: validator,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          fontSize: 16,
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.only(
          left: 20,
          top: 16,
          bottom: 16,
          right: 20,
        ),
        label: Text(label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide.none,
        ),
        floatingLabelStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
