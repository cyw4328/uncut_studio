import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 80,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.red,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              child: Text('HOME',style: TextStyle(fontSize: 9,color: Colors.white),),
            ),
            Tab(
              icon: Icon(
                Icons.visibility,
                size: 18,
              ),
              child: Text('INFO',style: TextStyle(fontSize: 9,color: Colors.white),),
            ),
            Tab(
              icon: Icon(
                Icons.inventory,
                size: 18,
              ),
              child: Text('CONTENTS',style: TextStyle(fontSize: 9,color: Colors.white),),
            ),
            Tab(
              icon: Icon(
                Icons.room,
                size: 18,
              ),
              child: Text('DIRECTIONS',style: TextStyle(fontSize: 9,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
