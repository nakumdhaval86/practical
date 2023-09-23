import 'package:dhavalpracticaltest/constants/app_strings.dart';
import 'package:dhavalpracticaltest/controllers/homepage_controller.dart';
import 'package:dhavalpracticaltest/widgets/home/student_list_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homePageTitle),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HomePageController.navigateToAddMarksScreen(context);
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              child: Text("Display Carousale Banner"),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return const StudentListItemWidget(
                      name: 'Dhaval',
                      gujaratiScore: 30,
                      mathsScore: 50,
                      englishScore: 80,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
