import 'package:flutter/material.dart';

class ContentsScreen extends StatefulWidget {

  _ContentsScreen createState() => _ContentsScreen();
}

class _ContentsScreen extends State<ContentsScreen> {

  final List<String> imageList = [
    'assets/images/kang.jpg',
    'assets/images/kang1.jpg',
    'assets/images/권석1.jpg',
    'assets/images/권석2.jpg',
    'assets/images/권석3.jpg',
    'assets/images/설현1.jpg',
    'assets/images/설현2.jpg',
    'assets/images/승은1.jpg',
    'assets/images/승은2.jpg',
    'assets/images/지아1.jpg',
    'assets/images/지아2.jpg',
    'assets/images/해선1.jpg',
    'assets/images/해선2.jpg',
    'assets/images/희민1.jpg',
    'assets/images/희민2.jpg',
    'assets/images/정주1.jpg',
    'assets/images/정주2.jpg',
    'assets/images/원재1.jpg',
    'assets/images/원재2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 125,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/content.PNG',
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: imageList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return Dialog(
                          child: Hero(
                            tag: 'image${index.toString()}',
                            child: Image.asset(
                              imageList[index],
                              fit: BoxFit.cover,
                              height: 450,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        );
                      }
                    );
                  },
                  child: Hero(
                    tag: 'image${index.toString()}',
                    child: Image.asset(
                      imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState(){
    super.initState();

  }
}

