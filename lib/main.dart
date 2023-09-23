import 'package:dhavalpracticaltest/constants/app_colors.dart';
import 'package:dhavalpracticaltest/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: AppColors.primarySwatch,
      ),
      home: const HomePage(),
    );
  }
}
