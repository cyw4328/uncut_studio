import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:uncut_studio/model/model_image.dart';
import 'package:uncut_studio/screen/bottom_screen.dart';
import 'dart:ui';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({required this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  String like = "";

  final GlobalKey webViewKey = GlobalKey();
  Uri myUrl = Uri.parse("https://www.youtube.com/embed/");

  @override
  void initState(){
    super.initState();
    like = widget.movie.like;
    myUrl = Uri.parse("https://www.youtube.com/embed/"+like);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back,color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 50),
                    height: 650,
                    width: MediaQuery.of(context).size.width,
                    child: InAppWebView(
                      key: webViewKey,
                      initialUrlRequest: URLRequest(url: myUrl),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget makeMenuButton(){
  return Container();
}
