import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/onboarding/component/shadow.dart';
import 'package:iceb/presentation/profil/component/name_component.dart';
import 'package:iceb/presentation/profil/component/other_details.dart';
import 'package:iceb/presentation/story/component/saturation.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key, required this.celebrity});
  final CelebrityEntity celebrity;

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
                tag: celebrity.name,
                child: Saturation(
                    child: CachedNetworkImage(
                  imageUrl: celebrity.image,
                  fit: BoxFit.cover,
                )),
              ),
            ),
            const Positioned.fill(
              child: ShadowOverImage(),
            ),
            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              height: context.getThirdOfHeight-context.getHeight(50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameComponent(celebrity: celebrity),

                    Expanded(
                        child: OtherDerails(
                      celebrity: celebrity,
                    ),),
                  ],),
            ),
          ],
        ),
      ),
    );
  }
}
