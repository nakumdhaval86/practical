import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          title,
          style: AppTextStyles.fontPoppins16Medium
              .copyWith(color: Colors.white, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
