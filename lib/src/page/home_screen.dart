// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                Tab(icon: Text("ランキング")),
                Tab(icon: Text("特集")),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            viewPart(context),
            const Icon(Icons.access_time_outlined, size: 350),
            const Icon(Icons.access_time_outlined, size: 350),
          ],
        ),
      ),
    );
  }

  List<String> horizontalimage = [
    "https://media.gettyimages.com/id/1338913099/video/japanese-television-news-anchor-delivering-the-news.jpg?s=640x640&k=20&c=GI5osBS3qQa-8xwnbkTlJswtL2MIHaHz_x2KR8BL1BU=",
    "https://www.shutterstock.com/image-photo/tokyo-may-2016-japanese-newspapers-260nw-481734772.jpg",
    "https://media.gettyimages.com/id/157771567/photo/newspaper-and-magazine-stand.jpg?s=612x612&w=gi&k=20&c=RUlfnjdebgduVZEQs8-Fz-WsOEL1aBKx_k-cK7YtAas=",
    "https://www.japan-experience.com/sites/default/files/images/content_images/japanese-newspapers-10.jpg",
    "https://media.gettyimages.com/id/1338913099/video/japanese-television-news-anchor-delivering-the-news.jpg?s=640x640&k=20&c=GI5osBS3qQa-8xwnbkTlJswtL2MIHaHz_x2KR8BL1BU=",
    "https://www.shutterstock.com/image-photo/tokyo-may-2016-japanese-newspapers-260nw-481734772.jpg",
    "https://media.gettyimages.com/id/157771567/photo/newspaper-and-magazine-stand.jpg?s=612x612&w=gi&k=20&c=RUlfnjdebgduVZEQs8-Fz-WsOEL1aBKx_k-cK7YtAas=",
    "https://www.japan-experience.com/sites/default/files/images/content_images/japanese-newspapers-10.jpg",
  ];
  List<String> horizontalimagelastest = [
    "https://m.media-amazon.com/images/M/MV5BZDUxNTA5MmMtOWJkNS00MzQ0LTllYzYtNmU2NTBjNzAzMWU4XkEyXkFqcGdeQXVyMTAwMDU3Nzk1._V1_.jpg",
    "https://m.media-amazon.com/images/M/MV5BODBjM2EwMGQtYmM3Zi00OTY5LTliODQtZjdjOTRlOTQ2YWQzXkEyXkFqcGdeQXVyMTAwMDU3Nzk1._V1_.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNNTakW0xoVLifsEWoOdlDGrce2kUqChINDg&usqp=CAU",
    "https://www.spoon-tamago.com/wp-content/uploads/2016/03/kouraku-kiln-treasure-hunt-2.jpg",
    "https://s3-ap-northeast-1.amazonaws.com/thegate/2019/09/09/14/04/23/Arita-ware.JPG",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKoEn2TLvcSbexPTF-djtcYaB9dFYga-CGQOIPNLtggAdhC5bAKoQ7OYS1ATnvehHpgE&usqp=CAU",
    "https://media.istockphoto.com/id/1351631817/photo/news-headline-with-ministry-of-health-labor-and-welfare-written-in-japanese.jpg?s=612x612&w=0&k=20&c=3q3yJe1ja1xLpHMRcFiKrcvma0291p4xG_HXZPt-ufA=",
    "https://c1.wallpaperflare.com/preview/668/910/414/art-blur-calligraphy-depth-of-field.jpg",
  ];
  List<String> horizontalimagebig = [
    "https://c4.wallpaperflare.com/wallpaper/348/422/333/cat-4k-hd-wallpaper-preview.jpg",
    "https://www.shutterstock.com/image-photo/tokyo-may-2016-japanese-newspapers-260nw-481734772.jpg",
    "https://media.gettyimages.com/id/157771567/photo/newspaper-and-magazine-stand.jpg?s=612x612&w=gi&k=20&c=RUlfnjdebgduVZEQs8-Fz-WsOEL1aBKx_k-cK7YtAas=",
    "https://www.japan-experience.com/sites/default/files/images/content_images/japanese-newspapers-10.jpg",
    "https://media.gettyimages.com/id/1338913099/video/japanese-television-news-anchor-delivering-the-news.jpg?s=640x640&k=20&c=GI5osBS3qQa-8xwnbkTlJswtL2MIHaHz_x2KR8BL1BU=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKoEn2TLvcSbexPTF-djtcYaB9dFYga-CGQOIPNLtggAdhC5bAKoQ7OYS1ATnvehHpgE&usqp=CAU",
    "https://media.istockphoto.com/id/1351631817/photo/news-headline-with-ministry-of-health-labor-and-welfare-written-in-japanese.jpg?s=612x612&w=0&k=20&c=3q3yJe1ja1xLpHMRcFiKrcvma0291p4xG_HXZPt-ufA=",
    "https://c1.wallpaperflare.com/preview/668/910/414/art-blur-calligraphy-depth-of-field.jpg",
  ];

  List<String> horizontalimage1 = [
    "https://media.istockphoto.com/id/1351631817/photo/news-headline-with-ministry-of-health-labor-and-welfare-written-in-japanese.jpg?s=612x612&w=0&k=20&c=3q3yJe1ja1xLpHMRcFiKrcvma0291p4xG_HXZPt-ufA=",
    "https://c1.wallpaperflare.com/preview/668/910/414/art-blur-calligraphy-depth-of-field.jpg",
    "https://wallpaperaccess.com/full/34428.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKoEn2TLvcSbexPTF-djtcYaB9dFYga-CGQOIPNLtggAdhC5bAKoQ7OYS1ATnvehHpgE&usqp=CAU",
    "https://media.istockphoto.com/id/1351631817/photo/news-headline-with-ministry-of-health-labor-and-welfare-written-in-japanese.jpg?s=612x612&w=0&k=20&c=3q3yJe1ja1xLpHMRcFiKrcvma0291p4xG_HXZPt-ufA=",
    "https://c1.wallpaperflare.com/preview/668/910/414/art-blur-calligraphy-depth-of-field.jpg",
    "https://wallpaperaccess.com/full/34428.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKoEn2TLvcSbexPTF-djtcYaB9dFYga-CGQOIPNLtggAdhC5bAKoQ7OYS1ATnvehHpgE&usqp=CAU",
  ];
  List<String> horizontalTitle = [
    "CATCHY 第1部 情報番組 ...",
    "セイカツをカエルTV - 20...",
    "戦没者を二度殺すのか ~ ...",
    "CATCHY 第1部 情報番組 ...",
    "セイカツをカエルTV - 20...",
    "戦没者を二度殺すのか ~ ...",
    "セイカツをカエルTV - 20...",
    "戦没者を二度殺すのか ~ ...",
  ];
  List<String> horizontaldate = [
    "2023/5/8 放送分",
    "2023/5/7 放送分",
    "2023/5/6 放送分",
    "2023/5/5 放送分",
    "2023/5/8 放送分",
    "2023/5/3 放送分",
    "2023/5/2 放送分",
    "2023/5/1 放送分",
  ];

  Widget viewPart(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://media.gettyimages.com/id/1338912999/video/japanese-television-news-anchor-delivering-the-news.jpg?s=640x640&k=20&c=TWD2eGx6FcJlWKzqSPPgPd7dpi6lJdwtS-lAqGra95k="),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVKoEn2TLvcSbexPTF-djtcYaB9dFYga-CGQOIPNLtggAdhC5bAKoQ7OYS1ATnvehHpgE&usqp=CAU"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://wallpaperaccess.com/full/34428.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://c1.wallpaperflare.com/preview/668/910/414/art-blur-calligraphy-depth-of-field.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: NetworkImage("https://s3-ap-northeast-1.amazonaws.com/thegate/2019/09/09/14/04/23/Arita-ware.JPG"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 15 / 5,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "新着",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("すべて見る", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0Xff0094E8))),
                    Icon(Icons.arrow_forward_ios_rounded, color: Color(0Xff0094E8), size: 18),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.23,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.network(
                          horizontalimage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(horizontalTitle[index], style: const TextStyle(color: Color(0XFF2E3D4B))),
                      Text(horizontaldate[index], style: const TextStyle(color: Color(0XFFA1A1A1))),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "QAB 番組",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("すべて見る", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0Xff0094E8))),
                    Icon(Icons.arrow_forward_ios_rounded, color: Color(0Xff0094E8), size: 18),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Image.network(
                          horizontalimage1[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(horizontalTitle[index], style: const TextStyle(color: Color(0XFF2E3D4B))),
                      Text(horizontaldate[index], style: const TextStyle(color: Color(0XFFA1A1A1))),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "QAB 番組",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text("すべて見る", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0Xff0094E8))),
                    Icon(Icons.arrow_forward_ios_rounded, color: Color(0Xff0094E8), size: 18),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.42,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: MediaQuery.of(context).size.height * 0.35,
                        child: Image.network(
                          horizontalimagebig[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(horizontalTitle[index], style: const TextStyle(color: Color(0XFF2E3D4B))),
                    ],
                  ),
                );
              },
            ),
          ),
          Image.asset("assets/fcgvhbnjkm.png"),
          const Align(alignment: Alignment.centerLeft, child: Text("    夢原鍼灸院", style: TextStyle(color: Color(0XFFA1A1A1)))),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "特集",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.network(
                          horizontalimagelastest[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(horizontalTitle[index], style: const TextStyle(color: Color(0XFF2E3D4B))),
                      Text(horizontaldate[index], style: const TextStyle(color: Color(0XFFA1A1A1))),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
