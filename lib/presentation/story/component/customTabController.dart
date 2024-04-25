import 'package:flutter/material.dart';

class CustomTabController extends TabController{
  CustomTabController({required super.length, required super.vsync});
  @override
  void animateTo(int value, {Duration? duration, Curve curve = Curves.ease}) {

    super.animateTo(value, duration: duration, curve: Curves.elasticInOut);
  }

}