import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatefulWidget {

  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white12,
        width: double.infinity,
        height: double.infinity,
        child: SizedBox(
          child: ListView(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/about.PNG',
                    ),
                  ),
                  const Text(
                    '[UNCUT] : \n'
                    '가공되지 않은, 원석의\n\n'
                    '안녕하세요, 원석을 찾는\nUNCUT Studio입니다.\n'
                    '배우 오디션 영상/프로필 영상을 \n제작하는 UNCUT STUDIO 는\n'
                    '배우와 하나의 ‘작품’을 만들어간다는\n'
                    '철학으로 작업하고 있습니다.\n'
                    '빛나는 다이아몬드가 되기까지의\n'
                    '여정을 UNCUT STUDIO와 함께\n\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Hello, we re UNCUT Studio, \n'
                    'looking for uncut diamonds\n\n'
                    'UNCUT Studio, which produces\n'
                    'actor audition videos/profile videos,\nworks with the philosophy\n'
                    'of creating a master\npiece with actors.\n'
                    'The journey to becoming a shining \n'
                    'diamond with UNCUT Studio.\n\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/director.PNG',
                    ),
                  ),
                  const Text(
                    '권한슬\n',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25
                    )
                  ),
                  const Text(
                    '한국예술종합학교 영상원 영화과\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18
                    )
                  ),
                  const Text(
                    '단편\n'
                    '<비밀번호>, 2020 미술감독\n'
                    '<좋은 나, 좋은 똥>, 2020 미술감독\n'
                    '<두시간>, 2021 연출\n'
                    '<크리스마스가 따뜻한 이유는 말이죠,>,2021 제작팀\n'
                    '<불명예퇴직>, 2022 PD\n<마마s 키친>, 2022 연출\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '뮤직비디오\n'
                    '<From20 - From20>\n-> 2021 프로듀서\n'
                    '<친구들은 하나 둘 담배를 피우기 시작해 - From20>\n-> 2021 프로듀서\n'
                    '<TV Star - hellogroom>\n-> 2022 연출, 프로듀서\n\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                      '박상규\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 25
                      )
                  ),
                  const Text(
                      '한국예술종합학교 연극원 연기과\n',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18
                      )
                  ),
                  const Text(
                    '연극\n'
                    '<나나> 필립, 2018\n'
                    '<코뿔소> 뒤다르, 2019\n'
                    '<호라티우스> 루키우스, 2020\n'
                    '<무브먼트>, 2021 조연출\n'
                    '<닫힌 방> 가르생, 2022\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '뮤지컬\n'
                    '<용포를 고치는 소녀> 사내, 2022\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    '영상\n'
                    '<매혹>, 2017, 출연\n'
                    '<Tv Star>, 2021 조연출\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }

  @override
  void initState(){
    super.initState();

  }
}

