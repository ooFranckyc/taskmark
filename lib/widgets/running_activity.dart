import 'package:flutter/material.dart';

class RunningActivityLayout extends StatelessWidget {
  final String taskName;
  const RunningActivityLayout({Key? key, required this.taskName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffEAF6FF)),
              child: const Icon(
                Icons.video_camera_back_rounded,
                color: Color(0xff3E7CDC),
                size: 25,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  taskName,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                Container(
                  width: 180,
                  height: 5,
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  color: Colors.blue,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "completed",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                    SizedBox(width: 80),
                    Text(
                      "100%",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
