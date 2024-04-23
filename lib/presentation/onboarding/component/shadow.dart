import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShadowOverImage extends StatelessWidget {
  const ShadowOverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return      Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: const [
                //0.40,
                //0.75,
                //0.88
                0.55,
                0.65,
                0.85
              ],
              colors: [
                const Color(0xFFD9D9D9).withOpacity(0),
                Colors.black.withOpacity(.4),
                Colors.black,
              ])),
    );
  }
}
