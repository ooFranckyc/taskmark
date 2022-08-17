import 'package:flutter/material.dart';

class StatistikCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final double currentPrice;
  final double backupPrice;
  final bool isSolved;
  final String word;
  const StatistikCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.currentPrice,
      required this.backupPrice,
      required this.isSolved,
      required this.word})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.only(top: 15, left: 6, right: 10, bottom: 15),
      decoration: BoxDecoration(
          border: BorderDirectional(
              end: BorderSide(color: Colors.grey.shade300, width: 1))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 17),
              ),
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffD1ECFF)),
                child: Icon(
                  icon,
                  color: const Color(0xff73A9F5),
                ),
              )
            ],
          ),
          const SizedBox(height: 1),
          Text(
            "\$${currentPrice.toString()}",
            style: const TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Container(
                width: 15,
                height: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: isSolved
                        ? Colors.red.shade100
                        : const Color(0xffD6EFE3),
                    shape: BoxShape.circle),
                child: Text(
                  isSolved ? "!" : "?",
                  style: TextStyle(
                      fontSize: 10,
                      color: isSolved
                          ? Colors.red.shade600
                          : Colors.green.shade800,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 2),
              Text(
                isSolved
                    ? "-${backupPrice.toString()}%"
                    : "+${backupPrice.toString()}%",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: isSolved ? Colors.red.shade600 : Colors.green),
              ),
              const SizedBox(width: 3),
              Text(
                word,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
