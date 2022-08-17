import 'package:flutter/material.dart';

class ActivityLayout extends StatefulWidget {
  final String startTime;
  final String endTime;
  final Widget child;
  const ActivityLayout(
      {Key? key,
      required this.startTime,
      required this.endTime,
      required this.child})
      : super(key: key);

  @override
  State<ActivityLayout> createState() => _ActivityLayoutState();
}

class _ActivityLayoutState extends State<ActivityLayout> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // timeline
        Container(
          width: 90,
          padding: const EdgeInsets.all(10),
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                Text(
                  widget.startTime,
                  style: const TextStyle(
                      color: Color(0xff767676),
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
                Text(
                  widget.endTime,
                  style: const TextStyle(
                      color: Color(0xff767676),
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        // meeting card ui or task finished layout
         Expanded(
          child: widget.child,
        )
      ],
    );
  }
}


