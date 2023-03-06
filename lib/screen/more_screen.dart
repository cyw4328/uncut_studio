import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white12,
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/directions.PNG',
                  ),
                ),
                FractionallySizedBox(
                  widthFactor:0.8,
                  child: Image.asset(
                      'assets/images/map.JPG'
                  ),
                ),
                const Text(
                  '\n서울특별시 중랑구 동일로116길 54 지하1층\n'
                  '상봉역 4번 출구에서 229m\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15
                  )
                ),
                const Text(
                  '상봉역 4번 출구에서 나와 우측으로 꺽어 \n'
                  '직진하다가 형제숯불갈비가 보이는 골목안으로 들어가시면 \n'
                  '주소에 있는 건물에 회색 철문이 있습니다.\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 15
                  )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // 버튼 색상
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // 박스형 버튼
                    ),
                  ),
                  onPressed: () {
                    // 버튼 클릭 시 실행되는 코드
                    String mapUrl = 'https://map.naver.com/v5/entry/place/1862895452?placePath=%2Fhome%3Fentry=plt&c=15,0,0,0,dh';
                    launch(mapUrl);
                  },
                  child: Text('네이버 지도 바로가기'),
                )
              ],
            ),
          ]
        ),
      ),
    );
  }
}
