import 'package:flutter/material.dart';
import 'package:testing_my_work/pages/home_page.dart';
import 'package:testing_my_work/pages/setting_profile_page.dart';
import 'package:testing_my_work/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.grey,
          primaryTextTheme: TextTheme(
              headline6: TextStyle(
                  color: Colors.white
              )
          )
      ),
      home: const HomePage(),
      routes: {
        SettingProfilePage.id : (context) => const SettingProfilePage()
      },
    );
  }
}

