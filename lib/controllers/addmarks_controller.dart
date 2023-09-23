import 'package:dhavalpracticaltest/constants/app_strings.dart';
import 'package:flutter/material.dart';

class AddMarksController {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController gujaratiController = TextEditingController();
  static TextEditingController mathsController = TextEditingController();
  static TextEditingController englishController = TextEditingController();

  static void onRecordSave(BuildContext context) {
    if (nameController.text.trim().isEmpty ||
        gujaratiController.text.trim().isEmpty ||
        mathsController.text.trim().isEmpty ||
        englishController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppStrings.pleaseFillAllDetails),
        ),
      );
    } else if (int.parse(gujaratiController.text.trim()) > 100 ||
        int.parse(mathsController.text.trim()) > 100 ||
        int.parse(englishController.text.trim()) > 100) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppStrings.errorMarksMustBeUpTo100),
        ),
      );
    } else {
      //TODO : save record into db
    }
  }
}
