import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:taskmark/pages/task_details.dart';
import 'package:taskmark/transition.dart';

class UserTask extends StatelessWidget {
  final String taskName;
  final String taskDate;
  final String taskDesc;
  final int numTask;
  final int numComment;
  final double percentFinished;
  const UserTask(
      {Key? key,
      required this.taskName,
      required this.taskDate,
      required this.taskDesc,
      required this.numTask,
      required this.numComment,
      required this.percentFinished})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounce(
      duration: const Duration(milliseconds: 200),
      onPressed: () {
        Navigator.push(
            context, SlideTransitionRightToLeft(TaskDetailScreen(taskName: taskName,)));
      },
      child: Container(
        width: double.infinity,
        height: 170,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 15, bottom: 15),
        decoration: BoxDecoration(
           color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // name task
                Text(
                  taskName,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff141414)),
                ),
                // date
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.timer, color: Colors.grey.shade600, size: 20),
                    const SizedBox(width: 3),
                    Text(
                      taskDate,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade500),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            // Task description
            Text(
              taskDesc,
              style: const TextStyle(
                  height: 1.22,
                  color: Color(0xffCFCFD2),
                  fontWeight: FontWeight.w500),
            ),
            // status info card task
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 20,
                      color: Color(0xff3E7CDC),
                    ),
                    const SizedBox(width: 1),
                    Text("${numTask.toString()} Task",
                        style: const TextStyle(
                            color: Color(0xffCFCFD2),
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.comment_bank,
                      size: 20,
                      color: Color(0xff3E7CDC),
                    ),
                    const SizedBox(width: 1),
                    Text("${numComment.toString()} Comment",
                        style: const TextStyle(
                            color: Color(0xffCFCFD2),
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          width: 55,
                          height: 8,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(width: 3),
                    Text("${percentFinished.toString()}%",
                        style: const TextStyle(
                            color: Color(0xffCFCFD2),
                            fontSize: 12,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
