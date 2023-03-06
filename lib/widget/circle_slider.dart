import 'package:flutter/material.dart';
import 'package:uncut_studio/model/model_image.dart';
import 'package:uncut_studio/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {

  final List<Movie> movies;
  CircleSlider({required this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('YouTube View',textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
          Container(
            height: 120,
            child: Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeCircleImages(movies,context),
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeCircleImages(List<Movie> movies , BuildContext context){
  List<Widget> results = [];
  for(var i = 0; i<movies.length;i++){
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
          padding: EdgeInsets.only(right: 15),
          child: Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/${movies[i].poster}'),
              radius: 50,
            ),
          ),

        ),
      )
    );
  }
  return results;
}