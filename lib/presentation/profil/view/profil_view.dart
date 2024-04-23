import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/presentation/onboarding/component/shadow.dart';
import 'package:iceb/presentation/profil/component/description.dart';

import '../../../component/background.dart';
import '../../story/component/saturation.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isHome: false,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Background(),
            const GlassWrapper(),
            Positioned(
              top: kToolbarHeight + 40,
              bottom: 0,
              left: 0,
              right: 0,
              child: Hero(
                tag: 'code',
                child: Saturation(
                  child: Image.asset(
                    AssetsHelper.edithBrou,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned.fill(
              child: ShadowOverImage(),
            ),
            Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                height: context.getThirdOfHeight,
                child: const Description()),
          ],
        ),
      ),
    );
  }
}
