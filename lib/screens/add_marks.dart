import 'package:dhavalpracticaltest/constants/app_strings.dart';
import 'package:dhavalpracticaltest/constants/app_textstyles.dart';
import 'package:dhavalpracticaltest/controllers/addmarks_controller.dart';
import 'package:dhavalpracticaltest/widgets/common/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/common/custom_textfield.dart';

class AddMarksPage extends StatelessWidget {
  const AddMarksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(AppStrings.addMarksPageTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  AppStrings.studentDetails,
                  style: AppTextStyles.fontPoppins16Medium.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                label: AppStrings.yourName,
                controller: AddMarksController.nameController,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: AppStrings.subjectGujarati,
                controller: AddMarksController.gujaratiController,
                textInputType: TextInputType.number,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 3,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: AppStrings.subjectMaths,
                controller: AddMarksController.mathsController,
                textInputType: TextInputType.number,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 3,
              ),
              const SizedBox(height: 10),
              CustomTextField(
                label: AppStrings.subjectEnglish,
                controller: AddMarksController.englishController,
                textInputType: TextInputType.number,
                inputFormatter: [FilteringTextInputFormatter.digitsOnly],
                maxLength: 3,
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: AppStrings.addRecord,
                onTap: () {
                  AddMarksController.onRecordSave(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
