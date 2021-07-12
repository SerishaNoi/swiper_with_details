// @dart=2.9
import 'package:flutter/material.dart';
import 'package:swiper_with_details/home_page.dart';
import 'package:swiper_with_details/screens/list_of_details.dart';
import 'package:swiper_with_details/screens/swiper_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListOfDetails(),
    );
  }
}
