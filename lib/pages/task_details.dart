import 'package:flutter/material.dart';
import 'package:taskmark/widgets/activity.dart';
import 'package:taskmark/widgets/appbar.dart';
import 'package:taskmark/widgets/header_tb.dart';
import 'package:taskmark/widgets/pending_activity.dart';
import 'package:taskmark/widgets/running_activity.dart';

class TaskDetailScreen extends StatefulWidget {
  final String taskName; // just the name
  const TaskDetailScreen({Key? key, required this.taskName}) : super(key: key);

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  bool isTapped = false;
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    double wDevice = MediaQuery.of(context).size.width;
    double ttp = wDevice / 2;
    return Scaffold(
      appBar: taskAppbar('title', context),
      backgroundColor: const Color(0xffFAFAFA),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // landing information
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(widget.taskName,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 8),
                  const Text(
                      "Designed an NFT-themed website with a creative and using unique concept. the first step, i want to get is to make a wiframe first by the ux designer, then play with the style the ui designer, good luck !",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffC7C7C8),
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      width: ttp,
                      height: 100,
                      padding:
                          const EdgeInsets.only(left: 15, top: 23, bottom: 23),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade400)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Deadline",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.coffee,
                                size: 25,
                                color: Color(0xff3E7CDC),
                              ),
                              SizedBox(width: 3),
                              Text("12 March 2022",
                                  style: TextStyle(
                                      color: Color(0xff141414),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: ttp,
                      height: 100,
                      padding:
                          const EdgeInsets.only(left: 15, top: 23, bottom: 23),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              width: 1, color: Colors.grey.shade400)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Task",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.task,
                                size: 25,
                                color: Color(0xff3E7CDC),
                              ),
                              SizedBox(width: 3),
                              Text("8 Pending task",
                                  style: TextStyle(
                                      color: Color(0xff141414),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Slider(
                      min: 5,
                      max: 100,
                      autofocus: true,
                      activeColor: const Color(0xffDCA930),
                      inactiveColor: Colors.grey.shade200,
                      value: 82,
                      onChanged: (value) {
                        setState(() {
                          // update value slider
                        });
                      }),
                ),
                const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      "80%",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff767676)),
                    ))
              ],
            ),
            const SizedBox(height: 25),
            const HeaderTbWidget(title: "Activities"),
            activitieWlanWidget()
          ],
        ),
      ),
    );
  }

  Widget activitieWlanWidget() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Container(
                height: 200,
                color: Colors.transparent,
                child: const ActivityLayout(
                    startTime: "07:00AM",
                    endTime: "08:30AM",
                    child: PendingActivityLayout())),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                    color: Colors.grey.shade300, thickness: 2, height: 10)),
            Container(
                height: 130,
                color: Colors.transparent,
                child: const ActivityLayout(
                    startTime: "07:00AM",
                    endTime: "08:30AM",
                    child: RunningActivityLayout(
                      taskName: "Designing Ideas",
                    ))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                    color: Colors.grey.shade300, thickness: 2, height: 10)),
            Container(
                height: 130,
                color: Colors.transparent,
                child: const ActivityLayout(
                    startTime: "08:00AM",
                    endTime: "09:30AM",
                    child: RunningActivityLayout(
                      taskName: "Wireframe section",
                    ))),
          ],
        ));
  }
}
