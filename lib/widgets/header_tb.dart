import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderTbWidget extends StatelessWidget {
  final String title;
  const HeaderTbWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                letterSpacing: -1,
                fontWeight: FontWeight.w500),
          ),
          //-------- fake pick multuple child button-----------
          Container(
            width: 120,
            height: 40,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2, color: Colors.grey.shade300)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.calendar_month,
                    color: Color(0xff3E7CDC),
                    size: 20,
                  ),
                  Text("Today", style: TextStyle(fontWeight: FontWeight.w600)),
                  Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.grey,
                    size: 20,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
