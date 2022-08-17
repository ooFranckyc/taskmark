import 'package:flutter/material.dart';

class TaskHeader extends StatelessWidget {
  final int taskCount;
  final IconData iconTask;
  final String messageStatus;
  const TaskHeader(
      {Key? key,
      required this.taskCount,
      required this.iconTask,
      required this.messageStatus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 120,
      padding: const EdgeInsets.only(left: 35, right: 35, top: 15),
      margin: const EdgeInsets.only(right: 15, bottom: 5),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 1,
              spreadRadius: 2,
              offset: const Offset(2, 2))
        ],
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                taskCount.toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xffEAF6FF), shape: BoxShape.circle),
                child: Icon(
                  iconTask,
                  size: 25,
                  color: const Color(0xff3E7CDC),
                ),
              )
            ],
          ),
          Text(
            messageStatus,
            style: const TextStyle(
                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
