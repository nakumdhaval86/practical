import 'package:dhavalpracticaltest/screens/add_marks.dart';
import 'package:flutter/material.dart';

class HomePageController {
  static void navigateToAddMarksScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddMarksPage()),
    );
  }
}
