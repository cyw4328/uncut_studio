import 'package:flutter/material.dart';
import 'package:uncut_studio/model/model_image.dart';
import 'package:uncut_studio/widget/box_slider.dart';
import 'package:uncut_studio/widget/carousel_slider.dart';
import 'package:uncut_studio/widget/circle_slider.dart';


class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Movie> movies = [
    Movie.fromMap({
      'title' : '스틸컷1',
      'keyword' : '1',
      'poster' : 'kang.jpg',
      'like' : 'LRELLKArgW4'
    }),
    Movie.fromMap({
      'title' : '스틸컷2',
      'keyword' : '1',
      'poster' : '설현1.jpg',
      'like' : 'a8EkT2bqsWM'
    }),
    Movie.fromMap({
      'title' : '스틸컷3',
      'keyword' : '1',
      'poster' : '지아1.jpg',
      'like' : 'R0rD_eSynb4'
    }),
    Movie.fromMap({
      'title' : '스틸컷4',
      'keyword' : '1',
      'poster' : '권석3.jpg',
      'like' : 'mhS32p7EwIA'
    }),
    Movie.fromMap({
      'title' : '스틸컷5',
      'keyword' : '1',
      'poster' : '승은1.jpg',
      'like' : 'USHCAfqW4Fw'
    })
  ];

  List<Event> event = [
    Event.fromMap({
      'title' : '이벤트1',
      'keyword' : '1',
      'poster' : 'event1.jpg',
      'like' : false
    }),
    Event.fromMap({
      'title' : '이벤트2',
      'keyword' : '1',
      'poster' : 'event2.jpg',
      'like' : false
    }),
    Event.fromMap({
      'title' : '이벤트3',
      'keyword' : '1',
      'poster' : 'event3.jpg',
      'like' : false
    }),
    Event.fromMap({
      'title' : '이벤트4',
      'keyword' : '1',
      'poster' : 'event4.jpg',
      'like' : false
    }),
    Event.fromMap({
      'title' : '이벤트5',
      'keyword' : '1',
      'poster' : 'event5.png',
      'like' : false
    })
  ];

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TopBar(),
        Stack(
          children: [
            CarouselImage(events: event),
          ],
        ),
        // CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      child: Image.asset(
        'assets/images/MAIN.PNG',
        fit: BoxFit.cover,
        height: 150,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}