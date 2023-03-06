import 'package:flutter/material.dart';
import 'package:uncut_studio/model/model_image.dart';
import 'package:uncut_studio/screen/detail_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BoxSlider extends StatelessWidget {

  final List<Movie> movies;
  BoxSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Video Preview',
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold)
              ),
              TextButton(
                onPressed: () {
                  String videoUrl = 'https://www.youtube.com/@uncutstudio23';
                  launch(videoUrl);
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
            height: 150,
            padding: const EdgeInsets.only(top: 15),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImage(movies,context),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImage (List<Movie> movies , BuildContext context){

  List<Widget> results = [];

  for(var i=0; i < movies.length;i++){
    results.add(
      InkWell(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute<Null>(
                  fullscreenDialog: true,
                  builder: (BuildContext context){
                    return DetailScreen(
                      movie: movies[i],
                    );
                  }
              )
          );
        },
        child: Container(
          padding: EdgeInsets.only(right: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/${movies[i].poster}',
            )
          ),
        ),
      )
    );
  }
  return results;
}