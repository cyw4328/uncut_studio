import 'package:flutter/material.dart';
import 'package:uncut_studio/widget/home_screen.dart';
import 'package:uncut_studio/screen/bottom_screen.dart';
import 'package:uncut_studio/screen/more_screen.dart';
import 'package:uncut_studio/screen/about.dart';
import 'package:uncut_studio/screen/contents_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uncutStudio',
      theme: ThemeData(
        // brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar:  CustomAppBar(
            imagePath: 'assets/images/LOGO1.png',
            onPressed: () {
              // 전화걸기
              _makePhoneCall('010-2669-4328');
            },
            onPressed1:(){
              // 이메일 보내기
              _sendEmail();
            }
          ),
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
            HomeScreen(),
            AboutScreen(),
            ContentsScreen(),
            MoreScreen()
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}



class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String imagePath;
  final Function onPressed;
  final Function onPressed1;

  CustomAppBar({required this.imagePath, required this.onPressed, required this.onPressed1});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Image.asset(
        imagePath,
        width: 300,
        height: 45
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            onPressed1();
          },
          icon: const Icon(
            Icons.email,
            size: 24.0,
          ),
        ),
        IconButton(
          onPressed: () {
            onPressed();
          },
          icon: const Icon(
            Icons.phone,
            size: 24.0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

void _makePhoneCall(String phoneNumber) async {
  String url = 'tel:$phoneNumber';
  await launch(url);
}

void _sendEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'cyw4328@naver.com',
    query: 'subject=문의드립니다.'
      '&body=문의사항은 양식에 맞춰서 작성 부탁드립니다.\n확인하고 연락드리겠습니다.\n\n성함 : \n전화번호 : \n문의사항 : \n',
  );
  String url = params.toString();
  // if (await canLaunch(url)) {
  //   await launch(url);
  // } else {
  //   throw 'Could not launch $url';
  // }
  await launch(url);
}