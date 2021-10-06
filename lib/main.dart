import 'package:flutter/material.dart';
import 'package:home_rent_app/constants.dart';
import 'package:home_rent_app/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Rent App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.copyWith(
              bodyText2: TextStyle(
                color: kLightTextColor,
              ),
            ),
      ),
      home: HomeScreen(),
    );
  }
}
