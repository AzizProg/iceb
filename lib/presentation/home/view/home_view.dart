import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/presentation/story/view/story_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      floatingActionButton: InkWell(
        onTap: () => Get.to(const StoryView(), transition: Transition.zoom),
        child: FadeInLeft(
          duration: const Duration(seconds: 3),
          from: 850,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.2),
            ),
            child: Animate(
              autoPlay: false,
              onInit: (controller) {
                Future.delayed(const Duration(seconds: 3, milliseconds: 500),
                    () => controller.forward());
              },
              onComplete: (controller) {
                controller.repeat();
              },
              effects: const [
                MoveEffect(
                  begin: Offset(-5, 0),
                  end: Offset(5, 0),
                  duration: Duration(seconds: 1),
                ),
              ],
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      appBar: CustomAppBar(),
      body: SafeArea(
        top: false,
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Background(),
            const Positioned.fill(child: GlassWrapper()),
            Positioned(
              top: kToolbarHeight + 80,
              right: 20,
              left: 20,
              height: context.getThirdOfHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeInUp(
                    duration: const Duration(seconds: 1),
                    child: Animate(
                      effects: const [ScaleEffect()],
                      delay: const Duration(milliseconds: 300),
                      child: Text(
                        'Celebrity Immersion',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 28),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FadeInLeft(
                      from: 300,
                      duration: const Duration(seconds: 1),
                      child: Animate(
                        effects: const [ScaleEffect()],
                        delay: const Duration(milliseconds: 500),
                        child: Text(
                          'Talent',
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 28,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = Colors.white
                                      ..strokeWidth = 1,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: FadeInUp(
                      from: 500,
                      duration: const Duration(seconds: 1),
                      child: Animate(
                        effects: const [ScaleEffect()],
                        child: Text(
                          'Models',
                          textDirection: TextDirection.ltr,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 28,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              left: 20,
              bottom: 100,
              child: FadeInUp(
                duration: const Duration(seconds: 1, milliseconds: 500),
                from: 800,
                child: Animate(
                  delay: const Duration(seconds: 1),
                  effects: const [FadeEffect(), ScaleEffect()],
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      text: 'Pour ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 24),
                      children: [
                        TextSpan(
                          text: 'une nouvelle generation',
                          style: TextStyle(
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..color = Colors.white
                              ..strokeWidth = 1,
                          ),
                        ),
                        const TextSpan(text: ' forte et responsable '),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
