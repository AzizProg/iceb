import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/core/helpers/asset_helper.dart';

class Celebrity extends StatelessWidget {
  const Celebrity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.all(10),
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Color(0xFFD9D9D9),
          ),
          child: Transform.translate(
            offset: const Offset(0, -100),
            child: Container(
              width: 200,

              decoration:  BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.color),
                    image: AssetImage(AssetsHelper.edithBrou,)),
                color: Colors.black,
              ),

            ),
          )),
    );
  }
}
