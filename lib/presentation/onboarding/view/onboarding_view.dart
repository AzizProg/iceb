import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/status_bar.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/presentation/onboarding/component/lets_go.dart';
import 'package:iceb/presentation/onboarding/component/slogan.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: Stack(
            fit: StackFit.expand,
            children: [
       const Background(),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [
                      0.31,
                      0.79
                    ],
                        colors: [
                      const Color(0xFFD9D9D9).withOpacity(0),
                      Colors.black,
                    ])),
              ),
              const Positioned(
                  left: 20, bottom: 150, right: 20, child: Slogan()),
              const Positioned(bottom: 20, right: 20, child: LetsGo()),
            ],
          ),
        ),
      ),
    );
  }
}
