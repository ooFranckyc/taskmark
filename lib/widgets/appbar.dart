import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

taskAppbar(String title, BuildContext context) {
  return AppBar(
        elevation: 0,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Bounce(
            duration: const Duration(milliseconds: 150),
            onPressed: () {
              // back to home
              Navigator.pop(context);
            },
            child: Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.grey.shade400)),
              child: const Padding(
                  padding: EdgeInsets.only(right: 3),
                  child: Icon(
                    CupertinoIcons.back,
                    size: 25,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
        title:  Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Bounce(
              duration: const Duration(milliseconds: 180),
              onPressed: () {
                // show menu
              },
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 1, color: Colors.grey.shade400)),
                child: const Padding(
                    padding: EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.more_horiz_rounded,
                      size: 25,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color(0xffFAFAFA),
      );
}