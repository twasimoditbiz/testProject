// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TvScreen extends StatelessWidget {
  TvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text("マイアカウント", style: TextStyle(fontSize: 18)),
        actions: const [Icon(Icons.settings), SizedBox(width: 15)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "赤西 健太",
                  style: TextStyle(fontSize: 20, color: Color(0XFF2E3D4B)),
                ),
                Container(
                  decoration: BoxDecoration(color: const Color(0XFFF5F5F5), borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 14),
                    child: Text("編集"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color.fromARGB(255, 242, 229, 181),
                    child: Text(
                      "P",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0XFFFFC909)),
                    ),
                  ),
                  Text(
                    " 10,000 pt",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0XFF2E3D4B)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 32,
                  decoration: BoxDecoration(color: const Color(0XffECECEC), border: Border.all(width: 0.8, color: Colors.black26), borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Text("沖縄ナビをシェア")),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: 32,
                  decoration: BoxDecoration(color: const Color(0XffECECEC), border: Border.all(width: 0.8, color: Colors.black26), borderRadius: BorderRadius.circular(8)),
                  child: const Center(child: Text("沖縄ナビをシェア")),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "保存したコンテンツ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color(0Xff0094E8),
                      labelColor: Color(0xFF2E3D4B),
                      unselectedLabelColor: Color(0xFFA1A1A1),
                      labelPadding: EdgeInsets.only(left: 5),
                      tabs: [
                        Tab(icon: Text("ニュース")),
                        Tab(icon: Text("QAB動画")),
                        Tab(icon: Text("イベント")),
                        Tab(icon: Text("みんなの投稿")),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          newsTap(),
                          const Icon(Icons.access_time_outlined, size: 150),
                          const Icon(Icons.access_time_outlined, size: 150),
                          const Icon(Icons.access_time_outlined, size: 150),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<String> newsTitlelast = [
    "石垣島に過去最大規模の巨大クルーズ船が寄港",
    "石垣島に過去最大規模の巨大クルーズ船が寄港",
    "玉城知事訪中時に尖閣問題の要望求める決議、困難に「...",
  ];

  List<String> newNewsImage = [
    "assets/IMG_5938.png",
    "assets/IMG_5938.png",
    "assets/IMG_5938.png",
  ];
  Widget newsTap() {
    return SingleChildScrollView(
      child: Column(
        children: [
          newsList(itemCount: newsTitlelast.length, newsTitle: newsTitlelast, newsdate: "2023/5/7", newsImage: newNewsImage, isnew: true),
        ],
      ),
    );
  }

  Widget newsList({required int? itemCount, required List<String> newsTitle, required String newsdate, required List<String> newsImage, bool isnew = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
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
                          width: MediaQuery.of(context).size.width * 0.58,
                          child: Text(
                            newsTitle[index],
                            maxLines: 2,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      dateWidget(newsdate, false),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3, child: Image.asset(newsImage[index]))
                ],
              );
            },
          ),
          Image.asset("assets/fcgvhbnjkm.png"),
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
