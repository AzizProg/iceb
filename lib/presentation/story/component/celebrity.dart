import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/presentation/story/component/celebrity_name.dart';
import 'package:iceb/presentation/story/component/saturation.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class Celebrity extends StatelessWidget {
  const Celebrity({
    required this.asset,
    required this.name,
    super.key,
    this.fixed = true,
    required this.onTap,
  });

  final String name;
  final bool fixed;
  final String asset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: context.getHeight(300),
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Positioned.fill(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                //alignment: Alignment.bottomCenter,
                curve: Curves.easeInOut,
                transform: Matrix4.identity()
                  ..translate(
                    0.0,
                    fixed ? -100.0 : 0.0,
                  )
                // ..scale(fixed ? 1.0 : 1.0, fixed ? 1.2 : 1.0, 1.0)
                ,
                child: AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: fixed ? 1.0 : 0.0,
                  child: InkWell(
                    onTap:onTap ,
                    child: Hero(
                      tag: name,
                      child: Saturation(
                        child:CachedNetworkImage(imageUrl: asset,fit: BoxFit.cover,)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CelebrityName(name: name),
            ),
          ],
        ),
      ),
    );
  }
}
