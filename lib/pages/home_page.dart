import 'package:flutter/material.dart';
import 'package:testing_my_work/pages/setting_profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SettingProfilePage.id);
          },
          child: Text("My Setting Profile Page"),
        ),
      ),
    );
  }
}
