import 'package:dhavalpracticaltest/constants/app_textstyles.dart';
import 'package:flutter/material.dart';

class TitleSubtitleWidget extends StatelessWidget {
  const TitleSubtitleWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    this.titleTextStyle,
    this.subtitleTextStyle,

    /// when applied titleTextStyle that time this is not applicable
    this.titleColor,

    /// when applied subTitleTextStyle that time this is not applicable
    this.subTitleColor,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color? titleColor;
  final Color? subTitleColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle ?? AppTextStyles.fontPoppins10Medium.copyWith(color: titleColor ?? Colors.grey.shade400),
        ),
        Text(
          subTitle,
          style: subtitleTextStyle ??
              AppTextStyles.fontPoppins14Medium.copyWith(
                color: subTitleColor ?? Colors.grey,
                fontWeight: FontWeight.w500,
              ),
        )
      ],
    );
  }
}
