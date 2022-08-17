import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

class PendingActivityLayout extends StatefulWidget {
  const PendingActivityLayout({Key? key}) : super(key: key);

  @override
  State<PendingActivityLayout> createState() => _PendingActivityLayoutState();
}

class _PendingActivityLayoutState extends State<PendingActivityLayout> {
  bool isTapped = false;
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, left: 8, right: 5, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(12),
      ),
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastLinearToSlowEaseIn,
        height: isTapped // if onTap is true
            ? isExpanded // check is expanded
                ? 108
                : 108 // if expanded, make 90 value
            : isExpanded // if expanded
                ? 240
                : 210, //  make this value
        width: isExpanded ? 385 : 390,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(15),
        child: isTapped
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffEAF6FF), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.video_camera_back,
                          color: Color(0xff3E7CDC),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Meeting Client",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Start zoom in 10 minutes",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              height: 1.20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Bounce(
                          duration: const Duration(milliseconds: 180),
                          onPressed: () {
                            // expanded information
                            setState(() {
                              isTapped = !isTapped;
                            });
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 27,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                        height: 10, thickness: 1, color: Colors.grey.shade400),
                  ),
                
                ],
              )
            : Column(
                children: [
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0xffEAF6FF), shape: BoxShape.circle),
                        child: const Icon(
                          Icons.video_camera_back,
                          color: Color(0xff3E7CDC),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Meeting Client",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Start zoom in 10 minutes",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              height: 1.20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Bounce(
                          duration: const Duration(milliseconds: 180),
                          onPressed: () {
                            // expanded information
                            setState(() {
                              isTapped = !isTapped;
                            });
                          },
                          child: const Icon(
                            Icons.keyboard_arrow_up,
                            size: 27,
                            color: Colors.black,
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                        height: 10, thickness: 1, color: Colors.grey.shade300),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 180),
                        onPressed: () {
                          // add you event listenner
                        },
                        child: Container(
                          width: 115,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xffD9D9D9),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Text(
                            "Remind me later",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff767676)),
                          ),
                        ),
                      ),
                      Bounce(
                        duration: const Duration(milliseconds: 180),
                        onPressed: () {
                          // add you event listenner
                        },
                        child: Container(
                          width: 115,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: const Color(0xff2B7EFA),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Text(
                            "Set reminder",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
      ),
    );
  }
}
