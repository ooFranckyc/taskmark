import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:taskmark/pages/fragments/bag_fg.dart';
import 'package:taskmark/pages/fragments/home_fg.dart';
import 'package:taskmark/pages/fragments/statistics_fg.dart';
import 'package:taskmark/pages/fragments/task_fg.dart';
import 'package:taskmark/pages/fragments/user_fg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  final List pagesFragmentList = const [
    HomeFragment(),
    TaskFragment(),
    StatisticsFragment(),
    BagFragment(),
    UserFragment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: pagesFragmentList[currentIndex],
      bottomNavigationBar: ooBottomNavigationBar(),
    );
  }

  // make custum bottom navigation bar
  Widget ooBottomNavigationBar() {
    return Container(
      height: 60,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // home box
          Bounce(
            duration: const Duration(milliseconds: 120),
            onPressed: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: Column(
              children: [
                currentIndex == 0
                    ? Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xff3E7CDC),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Icon(
                  Icons.dashboard,
                  size: 35,
                  color: currentIndex == 0
                      ? const Color(0xff3E7CDC)
                      : const Color(0xffD9D9D9),
                )
              ],
            ),
          ),
          // note box
          Bounce(
            duration: const Duration(milliseconds: 120),
            onPressed: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: Column(
              children: [
                currentIndex == 1
                    ? Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xff3E7CDC),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Icon(
                  CupertinoIcons.doc_text_search,
                  size: 35,
                  color: currentIndex == 1
                      ? const Color(0xff3E7CDC)
                      : const Color(0xffD9D9D9),
                )
              ],
            ),
          ),
          // statistique box
          Bounce(
            duration: const Duration(milliseconds: 120),
            onPressed: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: Column(
              children: [
                currentIndex == 2
                    ? Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xff3E7CDC),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Icon(
                  Icons.graphic_eq_rounded,
                  size: 35,
                  color: currentIndex == 2
                      ? const Color(0xff3E7CDC)
                      : const Color(0xffD9D9D9),
                )
              ],
            ),
          ),
          // bag box
          Bounce(
            duration: const Duration(milliseconds: 120),
            onPressed: () {
              setState(() {
                currentIndex = 3;
              });
            },
            child: Column(
              children: [
                currentIndex == 3
                    ? Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xff3E7CDC),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Icon(
                  CupertinoIcons.bag,
                  size: 35,
                  color: currentIndex == 3
                      ? const Color(0xff3E7CDC)
                      : const Color(0xffD9D9D9),
                )
              ],
            ),
          ),
          // user box
          Bounce(
            duration: const Duration(milliseconds: 120),
            onPressed: () {
              setState(() {
                currentIndex = 4;
              });
            },
            child: Column(
              children: [
                currentIndex == 4
                    ? Container(
                        width: 25,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xff3E7CDC),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    : Container(),
                const SizedBox(height: 5),
                Icon(
                  CupertinoIcons.person,
                  size: 35,
                  color: currentIndex == 4
                      ? const Color(0xff3E7CDC)
                      : const Color(0xffD9D9D9),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
