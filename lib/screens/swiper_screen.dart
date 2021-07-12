import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwipebleScreen extends StatefulWidget {
  const SwipebleScreen({Key? key}) : super(key: key);

  @override
  _SwipebleScreenState createState() => _SwipebleScreenState();
}

class _SwipebleScreenState extends State<SwipebleScreen> {
  List? data;

  @override
  void initState() {
    super.initState();
    fetchImage().whenComplete(() {
      setState(() {});
    });
  }

  Future<String> fetchImage() async {
    http.Response response = await http.get(Uri.parse(
        'https://kitsu.io/api/edge/anime?page%5Blimit%5D=10&page%5Boffset%5D=0'));
    var jsonData = json.decode(utf8.decode(response.bodyBytes));
    setState(
      () {
        data = jsonData["data"];
      },
    );
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/bacground image.jpg'),
                fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
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
                            data![index]["attributes"]["posterImage"]["large"],
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
                          data?[index]["attributes"]["titles"]["en_jp"],
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
                          data?[index]["attributes"]["titles"]["ja_jp"],
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: data == null ? 0 : data?.length,
            ),
          ),
        ),
      ),
    );
  }
}
