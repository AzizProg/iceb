import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassWrapper extends StatelessWidget {
  const GlassWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(.5)),
        ));
  }
}
