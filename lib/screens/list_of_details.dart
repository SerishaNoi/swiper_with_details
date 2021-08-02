import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:swiper_with_details/services/json_details/datum.dart';
import 'package:swiper_with_details/services/parsing_attributes.dart';

class ListOfDetails extends StatefulWidget {
  final int selectedIndex;

  const ListOfDetails({Key? key, required this.selectedIndex})
      : super(key: key);
  @override
  _ListOfDetailsState createState() => _ListOfDetailsState();
}

class _ListOfDetailsState extends State<ListOfDetails> {
  Future<List<Datum>> series = DataServices().fetchData();
  Color color = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: FutureBuilder<List<Datum>>(
              future: series,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  double score = double.parse(snapshot
                          .data?[widget.selectedIndex]
                          .attributes
                          ?.averageRating ??
                      '');
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              snapshot.data?[widget.selectedIndex].attributes
                                      ?.posterImage?.medium ??
                                  '',
                              height: 300,
                            ),
                          ),
                          Positioned(
                            bottom: 224,
                            right: 6,
                            child: CircularPercentIndicator(
                              backgroundWidth: 12,
                              radius: 70,
                              lineWidth: 8.0,
                              percent: score / 100,
                              progressColor: Colors.purpleAccent,
                              backgroundColor: Colors.blue,
                              animation: true,
                              center: Text(
                                snapshot.data?[widget.selectedIndex].attributes
                                        ?.averageRating ??
                                    '',
                                style: TextStyle(
                                  color: Colors.lightGreen[800],
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
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
                                  snapshot.data?[widget.selectedIndex]
                                          .attributes?.ageRatingGuide ??
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
                                  snapshot.data?[widget.selectedIndex]
                                          .attributes?.showType
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
                                  snapshot.data?[widget.selectedIndex]
                                          .attributes?.episodeCount
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
                                  snapshot.data?[widget.selectedIndex]
                                          .attributes?.startDate ??
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
                                  snapshot.data?[widget.selectedIndex]
                                          .attributes?.endDate
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
                        snapshot.data?[widget.selectedIndex].attributes?.titles
                                ?.enjp ??
                            '',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        snapshot.data?[widget.selectedIndex].attributes?.titles
                                ?.jajp ??
                            '',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        snapshot.data?[widget.selectedIndex].attributes
                                ?.description ??
                            '',
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
