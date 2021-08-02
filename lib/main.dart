// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiper_with_details/cubit/series_state.dart';
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
      home: BlocProvider<SeriesCubit>(
        create: (context) => SeriesCubit()..fetchData(),
        child: SwipebleScreen(),
      ),
    );
  }
}
