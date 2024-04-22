import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/presentation/story/component/celebrity_name.dart';
import 'package:iceb/presentation/story/component/saturation.dart';

class Celebrity extends StatelessWidget {
  const Celebrity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: context.getThirdOfHeight,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Transform.translate(
                offset: Offset(0, -0),

                //offset: const Offset(0, 0),
                child: Saturation(
                  child: Image.asset(
                    AssetsHelper.edithBrou,

                    //fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CelebrityName(name: 'EDITH BROU')),
          ],
        ),
      ),
    );
  }
}
