import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_boilerplate/ui/utils/colors.dart';

class Input extends StatelessWidget {
  const Input(
      {this.label,
      this.type,
      this.controller,
      this.validator,
      this.textCapitalization: TextCapitalization.none,
      this.fillColor: UIColors.white,
      this.protected = false,
      this.placeholder,
      this.focusNode,
      this.onSubmitted});

  final String label;
  final TextInputType type;
  final bool protected;
  final TextEditingController controller;
  final TextCapitalization textCapitalization;
  final Function validator;
  final Color fillColor;
  final String placeholder;
  final FocusNode focusNode;
  final Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
        keyboardType: type,
        obscureText: protected,
        textCapitalization: textCapitalization,
        controller: controller,
        padding: EdgeInsets.all(15),
        placeholder: placeholder,
        focusNode: focusNode,
        onSubmitted: onSubmitted,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: UIColors.white,
            border: Border.all(color: UIColors.grey)));
  }
}
