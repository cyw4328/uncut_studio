import 'package:flutter/material.dart';
import 'package:uncut_studio/model/model_image.dart';
import 'package:uncut_studio/screen/detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselImage extends StatefulWidget {
  // final List<Movie> movies;
  final List<Event> events;

  // CarouselImage({required this.movies});
  CarouselImage({required this.events});
  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Event> events;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  late int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState(){
    super.initState();
    events = widget.events;
    images = events.map((e) => Image.asset('./assets/images/${e.poster}')).toList();
    keywords = events.map((e) => e.keyword).toList();
    likes = events.map((e) => e.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 20),
      color: Colors.white12,
      child: Column(
        children: <Widget>[
          // Container(
          //   padding: const EdgeInsets.only(top: 20),
          //   child: const Text(
          //       'Event',
          //       textAlign:TextAlign.center,
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 25,
          //           fontWeight: FontWeight.bold,
          //           fontFamily: AutofillHints.username
          //       )
          //   ),
          // ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  'Event',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.username
                  )
              ),
              TextButton(
                  onPressed: () {
                    _showAlertDialog(context);
                  },
                  child: const Text(
                      'More',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15
                      )
                  )
              )
            ],
          ),
          Container(
            // child: Image.asset('assets/images/younggu.jpg'),
            padding: const EdgeInsets.only(top: 10),
            // child: Image.asset('assets/images/younggu.jpg'),
            child: CarouselSlider(
                items: images,
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage = index;
                      _currentKeyword = keywords[_currentPage];
                    });
                  },
                  height: 300
                )
            ),
            // height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: makeIndicator(likes, _currentPage),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeIndicator(List list,int _currentPage){
  List<Widget> results =[];
  for (var i = 0; i<list.length;i++){
    results.add(
      Container(
        width: 8,
        height: 8,
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 2.0),
        decoration: BoxDecoration(shape: BoxShape.circle,color: _currentPage == i ? Color.fromRGBO(255, 255, 255, 0.9): Color.fromRGBO(255, 255, 255, 0.4))
      )
    );
  }
  return results;
}

void _showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("알림"),
        content: Text("해당 페이지는 작업 중입니다."),
        actions: [
          // TextButton(
          //   child: Text("취소"),
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          // ),
          TextButton(
            child: Text("확인"),
            onPressed: () {
              // 경고 팝업 확인 버튼 클릭 시 처리할 작업
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}