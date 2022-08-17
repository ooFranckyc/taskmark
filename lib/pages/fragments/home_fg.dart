import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:taskmark/widgets/header_tb.dart';
import 'package:taskmark/widgets/task_service.dart';
import 'package:taskmark/widgets/user_task.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 400,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Joshep Ali",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              SizedBox(height: 3),
              Text(
                "We're glad you're black !",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 20),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey.shade400),
                      color: Colors.transparent,
                      shape: BoxShape.circle),
                  child: const Icon(
                    CupertinoIcons.bell,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 10),
                Bounce(
                  duration: const Duration(milliseconds: 180),
                  onPressed: () {
                    // add your event listenner
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle),
                    child: const Text(
                      "JA",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 3,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            searchBar(),
            // list task
            listTask(),
            // section task header
            const SizedBox(height: 25),
            const HeaderTbWidget(title: "My Task"),
            const SizedBox(
              height: 30,
            ),
            userTaskList(),
            const SizedBox(height: 5)
          ],
        ),
      ),
    );
  }

  
  // make user task list
  Widget userTaskList() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 250,
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: const [
                UserTask(
                    taskName: "NFT Landing Page",
                    taskDate: "Mar/12/2022",
                    taskDesc:
                        "Designing a NFT-themed website with a creative and unique concept.",
                    numTask: 7,
                    numComment: 17,
                    percentFinished: 80),
                UserTask(
                    taskName: "DashBoard Finance",
                    taskDate: "Feb/20/2022",
                    taskDesc:
                        "Designing a financial themed dashboard with a attractive and unique appearance",
                    numTask: 5,
                    numComment: 12,
                    percentFinished: 70),
                UserTask(
                    taskName: "Logo Branding",
                    taskDate: "Feb/20/2022",
                    taskDesc:
                        "Designing a Logo branding components with a creative and unique concept.",
                    numTask: 22,
                    numComment: 34,
                    percentFinished: 100),
                UserTask(
                    taskName: "Tashmark app",
                    taskDate: "August/12/2022",
                    taskDesc:
                        "ooFrancky created this app by the Flutter Tech with your community.",
                    numTask: 9,
                    numComment: 22,
                    percentFinished: 100)
              ],
            ),
          ),
        ));
  }

  // make list header task
  Widget listTask() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const [
            TaskHeader(
                taskCount: 12,
                iconTask: Icons.timelapse,
                messageStatus: "Inprogress"),
            TaskHeader(
                taskCount: 52,
                iconTask: Icons.calendar_month,
                messageStatus: "Completed"),
            TaskHeader(
                taskCount: 19,
                iconTask: Icons.code,
                messageStatus: "Completed"),
            TaskHeader(
                taskCount: 31,
                iconTask: Icons.card_giftcard_outlined,
                messageStatus: "Canceled"),
          ],
        ),
      ),
    );
  }

  // make search bar widget
  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        width: double.infinity,
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12)),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            TextFormField(
              cursorColor: const Color(0xff2B7EFA),
              decoration: const InputDecoration(
                  hintText: "Search something...",
                  hintStyle: TextStyle(fontSize: 14),
                  isDense: true,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
            const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  CupertinoIcons.search,
                  size: 25,
                  color: Colors.black54,
                ))
          ],
        ),
      ),
    );
  }
}