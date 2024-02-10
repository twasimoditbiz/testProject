// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NewspaperScreen extends StatelessWidget {
  NewspaperScreen({super.key});

  List<String> newNewsTitle = [
    "新型コロナ5類移行で沖縄県の対策本部が解散 玉城知事「 ...",
    "ゴールデンウィーク最終日 みんなの思い出は？",
    "5年ぶりの “沖縄ダービー” はFC琉球に軍配 サッカー天皇 ...",
  ];

  List<String> newsTitle = [
    "沖縄防衛局の係長 飲酒運転で現行犯逮捕",
    "那覇空港 Uターン混雑ピーク 沖縄どうだった？",
    "警察官の仕事に理解を！白バイ & パトカー乗車体験",
    "石垣島に過去最大規模の巨大クルーズ船が寄港",
    "那覇空港 Uターン混雑ピーク 沖縄どうだった？",
  ];

  List<String> newsTitlelast = [
    "石垣島に過去最大規模の巨大クルーズ船が寄港",
    "石垣島に過去最大規模の巨大クルーズ船が寄港",
    "玉城知事訪中時に尖閣問題の要望求める決議、困難に「...",
    "キングス、群雄割拠の西地区制して6連覇！CS準決勝まで...",
  ];
  List<String> latetitle = [
    "アスリートフォーカス 第21回 フレッシュ！新社会人アスリ..",
    "独自ヘリ きょうも捜索続く",
    "アスリートフォーカス 第21回 フレッシュ！新社会人アスリ..",
    "独自ヘリ きょうも捜索続く",
  ];
  List<String> lateimage = [
    "assets/IMG_5939 (8).png",
    "assets/IMG_5939 (9).png",
    "assets/IMG_5939 (8).png",
    "assets/IMG_5939 (9).png",
  ];

  List<String> newsImagelast = [
    "assets/IMG_5939 (4).png",
    "assets/IMG_5939 (5).png",
    "assets/IMG_5939 (6).png",
    "assets/IMG_5939 (7).png",
  ];
  List<String> newNewsImage = [
    "assets/IMG_5938.png",
    "assets/IMG_5938 (1).png",
    "assets/IMG_5940.png",
  ];
  List<String> newsImage = [
    "assets/IMG_5937.png",
    "assets/IMG_5939 (1).png",
    "assets/gfds.png",
    "assets/IMG_5939 (4).png",
    "assets/IMG_5939 (3).png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            title: Image.asset("assets/Logo.png"),
            centerTitle: false,
            actions: [
              SizedBox(width: 50, height: 60, child: Image.asset("assets/notification.png")),
              SizedBox(width: 50, height: 60, child: Image.asset("assets/search.png")),
              SizedBox(width: 50, height: 60, child: Image.asset("assets/MyAccount.png")),
            ],
            bottom: const TabBar(
              indicatorColor: Color(0Xff0094E8),
              labelColor: Color(0xFF2E3D4B),
              unselectedLabelColor: Color(0xFFA1A1A1),
              labelPadding: EdgeInsets.only(left: 5),
              tabs: [
                Tab(icon: Text("すべて")),
                Tab(icon: Text("くらし")),
                Tab(icon: Text("社会")),
                Tab(icon: Text("経済")),
                Tab(icon: Text("エンタメ")),
                Tab(icon: Text("スポーツ")),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            newsTap(),
            const Icon(Icons.access_time_outlined, size: 350),
            const Icon(Icons.access_time_outlined, size: 350),
            const Icon(Icons.access_time_outlined, size: 350),
            const Icon(Icons.access_time_outlined, size: 350),
            const Icon(Icons.access_time_outlined, size: 350),
          ],
        ),
      ),
    );
  }

  Widget newsTap() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/Rectangle 17.png"),
          newsList(title: "新型コロナ「5類」引き下げ 検索・受診の公費負担なくなる", date: "2023/5/8", itemCount: newNewsTitle.length, newsTitle: newNewsTitle, newsdate: "2023/5/7", newsImage: newNewsImage, isnew: true),
          Image.asset("assets/Rectangle 17 (1).png"),
          newsList(title: "タクシーとバイクの事故 男性が死亡", date: "2023/5/6", itemCount: newsTitle.length, newsdate: "2023/5/6", newsTitle: newsTitle, newsImage: newsImage),
          Image.asset("assets/IMG_5951 2.png"),
          newsList(title: "株式会社パムローカルメディア", date: "", itemCount: newsImagelast.length, newsdate: "2023/5/6", newsTitle: newsTitlelast, newsImage: newsImagelast),
          Image.asset("assets/Rectangle 17 (2).png"),
          newsList(title: "GW こどもたちの表情", date: "2023/5/5", itemCount: latetitle.length, newsTitle: latetitle, newsdate: "2023/5/5", newsImage: lateimage)
        ],
      ),
    );
  }

  Widget newsList(
      {required String title, required String date, required int? itemCount, required List<String> newsTitle, required String newsdate, required List<String> newsImage, bool isnew = false}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          dateWidget(date, isnew),
          ListView.builder(
            shrinkWrap: true,
            itemCount: itemCount,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            newsTitle[index],
                            maxLines: 2,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      dateWidget(newsdate, isnew),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3, child: Image.asset(newsImage[index]))
                ],
              );
            },
          )
        ],
      ),
    );
  }

  Widget dateWidget(String date, bool isNew) {
    return Row(
      children: [
        isNew == true
            ? Container(
                width: 40,
                height: 20,
                color: const Color(0XFFF36243),
                child: const Center(
                  child: Text(
                    "New",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            : const SizedBox.shrink(),
        const SizedBox(width: 8),
        Text(
          date,
          style: const TextStyle(color: Color(0xFFAEAEB1)),
        )
      ],
    );
  }
}
