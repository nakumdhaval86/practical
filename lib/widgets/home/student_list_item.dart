import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_constant.dart';
import '../../constants/app_strings.dart';
import 'title_subtitle.dart';

class StudentListItemWidget extends StatelessWidget {
  const StudentListItemWidget({
    Key? key,
    required this.name,
    required this.gujaratiScore,
    required this.mathsScore,
    required this.englishScore,
  }) : super(key: key);

  final String name;
  final int gujaratiScore;
  final int mathsScore;
  final int englishScore;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        bottomLeft: Radius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            left: BorderSide(
              width: 5,
              color: AppColors.redColor,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleSubtitleWidget(
                  title: AppStrings.name,
                  subTitle: 'Dhaval Nakum',
                  subTitleColor: AppColors.headingColor,
                ),
                TitleSubtitleWidget(
                  title: AppStrings.percentage,
                  subTitle: '30%',
                  subTitleColor: AppColors.orangeColor,
                ),
              ],
            ),
            const SizedBox(height: 5),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleSubtitleWidget(
                  title: AppStrings.subjectGujarati,
                  subTitle: '$gujaratiScore/${AppConstant.totalMarks}',
                  titleColor: AppColors.darkHeadingColor,
                  subTitleColor: AppColors.headingColor,
                ),
                TitleSubtitleWidget(
                  title: AppStrings.subjectMaths,
                  subTitle: '$mathsScore/${AppConstant.totalMarks}',
                  titleColor: AppColors.darkHeadingColor,
                  subTitleColor: AppColors.headingColor,
                ),
                TitleSubtitleWidget(
                  title: AppStrings.subjectEnglish,
                  subTitle: '$englishScore/${AppConstant.totalMarks}',
                  titleColor: AppColors.darkHeadingColor,
                  subTitleColor: AppColors.headingColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
