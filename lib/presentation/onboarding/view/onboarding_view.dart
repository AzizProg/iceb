import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/status_bar.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/presentation/onboarding/component/lets_go.dart';
import 'package:iceb/presentation/onboarding/component/slogan.dart';

import '../component/shadow.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return  StatusBar(
      child: Scaffold(
        body: SafeArea(
          top: false,
          bottom: false,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Background(),
              ShadowOverImage(),
              Positioned(left: context.getWidth(20), bottom: context.getHeight(120), right: context.getWidth(20), child: Slogan()),
              Positioned(bottom: context.getHeight(20), right: context.getWidth(20), child: LetsGo()),
            ],
          ),
        ),
      ),
    );
  }
}
