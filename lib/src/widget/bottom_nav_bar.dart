// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_flutter/src/page/calender_screen.dart';
import 'package:test_flutter/src/page/home_screen.dart';
import 'package:test_flutter/src/page/news_screen.dart';
import 'package:test_flutter/src/page/profile_screen.dart';
import 'package:test_flutter/src/page/topic_screen.dart';
import 'package:test_flutter/src/page/tv_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int pageIndex = 0;

  final pages = [
    HomeScreen(),
    NewspaperScreen(),
     TvScreen(),
    const CalenderScreen(),
    const TopicScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/home.svg", height: 22, width: 8, color: pageIndex == 0 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("ホーム", style: TextStyle(color: pageIndex == 0 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/newspaper.svg", height: 22, width: 8, color: pageIndex == 1 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("ニュース", style: TextStyle(color: pageIndex == 1 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/tv.svg", height: 22, width: 8, color: pageIndex == 2 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("QAB動画", style: TextStyle(color: pageIndex == 2 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/calendar-days.svg", height: 22, width: 8, color: pageIndex == 3 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("イベント", style: TextStyle(color: pageIndex == 3 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/Group 1689.svg", height: 22, width: 8, color: pageIndex == 4 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("Topics", style: TextStyle(color: pageIndex == 4 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 60,
            height: 80,
            child: TextButton(
              onPressed: () {
                setState(() {
                  pageIndex = 5;
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/fds.svg", height: 22, width: 8, color: pageIndex == 5 ? const Color(0Xff0094E8) : const Color(0XFF979FA7)),
                  Text("ポイント", style: TextStyle(color: pageIndex == 5 ? const Color(0Xff0094E8) : const Color(0XFF979FA7), fontSize: 8)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
