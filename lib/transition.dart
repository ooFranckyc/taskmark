import 'package:flutter/material.dart';

// (c)copyright ooFrancky Open-source 😁👍

// Make a animation transition form right to left screen
class SlideTransitionRightToLeft extends PageRouteBuilder {
  final Widget page;

  SlideTransitionRightToLeft(this.page)
      : super(
            pageBuilder: (context, animation, otherAnimation) => page,
            transitionDuration: const Duration(milliseconds: 1000),
            reverseTransitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (context, animation, otherAnimation, child) {
              animation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastLinearToSlowEaseIn,
                  reverseCurve: Curves.fastOutSlowIn);
              return SlideTransition(
                  position: Tween(
                          begin: const Offset(1.0, 0.0),
                          end: const Offset(0.0, 0.0))
                      .animate(animation),
                  child: page);
            });
}
// Make a animation transition form left to right screen
class SlideTransitionLeftToRight extends PageRouteBuilder {
  final Widget page;

  SlideTransitionLeftToRight(this.page)
      : super(
            pageBuilder: (context, animation, otherAnimation) => page,
            transitionDuration: const Duration(milliseconds: 1000),
            reverseTransitionDuration: const Duration(milliseconds: 400),
            transitionsBuilder: (context, animation, otherAnimation, child) {
              animation = CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastLinearToSlowEaseIn,
                  reverseCurve: Curves.fastOutSlowIn);
              return SlideTransition(
                  position: Tween(
                          begin: const Offset(1.0, 0.0),
                          end: const Offset(0.0, 0.0))
                      .animate(animation),
                      textDirection: TextDirection.rtl,
                  child: page);
            });
}