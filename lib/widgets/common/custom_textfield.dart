import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_textstyles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.onChange,
    required this.label,
    this.textInputType,
    this.inputFormatter,
    this.maxLength,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String)? onChange;
  final String label;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      onChanged: onChange,
      keyboardType: textInputType ?? TextInputType.text,
      inputFormatters: inputFormatter,
      maxLength: maxLength,
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(
          label,
          style: AppTextStyles.fontPoppins14Medium.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        focusColor: Colors.red,
        filled: true,
        fillColor: Colors.white70,
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          borderSide: BorderSide(color: AppColors.lightGreyColor),
        ),
      ),
    );
  }
}
