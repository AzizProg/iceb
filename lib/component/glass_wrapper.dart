import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassWrapper extends StatelessWidget {
  const GlassWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 50, sigmaX: 50),
        child: Container(
          decoration:
          BoxDecoration(color: Colors.black.withOpacity(.5)),
        )) ;
  }
}
