import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swiper_with_details/services/json_details/datum.dart';
import 'package:swiper_with_details/services/parsing_attributes.dart';

class ListOfDetails extends StatefulWidget {
  @override
  _ListOfDetailsState createState() => _ListOfDetailsState();
}

class _ListOfDetailsState extends State<ListOfDetails> {
  late Future<List<Datum>> series;

  @override
  void initState() {
    super.initState();
    series = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/1.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all(14),
            child: FutureBuilder<List<Datum>>(
              future: series,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  double score = double.parse(
                      snapshot.data?.first.attributes?.averageRating ?? '');
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Stack(
                        children: [
                          Image.network(
                            snapshot.data?.first.attributes?.posterImage
                                    ?.medium ??
                                '',
                            height: 300,
                          ),
                          Positioned(
                            bottom: 8,
                            right: 8,
                            child: CircularPercentIndicator(
                              radius: 70,
                              lineWidth: 8.0,
                              percent: score / 100,
                              progressColor: Colors.greenAccent,
                              backgroundColor: Colors.red,
                              animation: true,
                              center: Text(
                                  snapshot.data?.first.attributes
                                          ?.averageRating ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 18)),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: [
                                Text(
                                  'Age rating:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  snapshot.data?.first.attributes
                                          ?.ageRatingGuide ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Show type:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  snapshot.data?.first.attributes?.showType
                                          .toString() ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Episode count:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  snapshot.data?.first.attributes?.episodeCount
                                          .toString() ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Start data:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  snapshot.data?.first.attributes?.startDate ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'End data:',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  snapshot.data?.first.attributes?.endDate
                                          .toString() ??
                                      '',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        snapshot.data?.first.attributes?.titles?.enjp ?? '',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        snapshot.data?.first.attributes?.titles?.jajp ?? '',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        snapshot.data?.first.attributes?.description ?? '',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ),
      ),
    );
  }
}
