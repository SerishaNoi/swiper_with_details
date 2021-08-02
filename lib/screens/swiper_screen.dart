import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:swiper_with_details/cubit/series_state.dart';
import 'package:swiper_with_details/screens/list_of_details.dart';
import 'package:swiper_with_details/services/json_details/datum.dart';

class SwipebleScreen extends StatefulWidget {
  const SwipebleScreen({Key? key}) : super(key: key);

  @override
  _SwipebleScreenState createState() => _SwipebleScreenState();
}

class _SwipebleScreenState extends State<SwipebleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: BlocBuilder<SeriesCubit, List<Datum>>(
        builder: (context, series) {
          if (series.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Swiper(
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => ListOfDetails(
                      selectedIndex: index,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          series[index].attributes?.posterImage?.large ?? '',
                          loadingBuilder: (context, child, progress) {
                            return progress == null
                                ? child
                                : LinearProgressIndicator(
                                    color: Colors.red,
                                  );
                          },
                          height: 580,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        series[index].attributes?.titles?.enjp ?? '',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        series[index].attributes?.titles?.jajp ?? '',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: series == null ? 0 : series.length,
          );
        },
      ),
    );
  }
}
