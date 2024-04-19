import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion(
        value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,

    ),
    child: child);

  }
}
