
import 'package:flutter/material.dart';

class MyRouter extends PageRouteBuilder{
  final Widget widget;

  MyRouter(this.widget):super(
    transitionDuration: const Duration(milliseconds: 350),
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
      return widget;
    },
    transitionsBuilder:(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
      // return FadeTransition(
      //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation, curve: Curves.elasticInOut)),
      //   child: child,);
      return FadeTransition(
        opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation, curve: Curves.linear)),
        child: child,
      );
    },
  );

}