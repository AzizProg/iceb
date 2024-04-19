import 'package:flutter/material.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/presentation/profil/view/profil_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      drawer: const ProfilView(),
      appBar: CustomAppBar(),
      body: SafeArea(
          top: false,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Background(),
              const Positioned.fill(child: GlassWrapper()),
              Center(
                child: Container(
                  height: context.getThirdOfHeight,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Celebrity Immersion',
                        textAlign: TextAlign.justify,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontSize: 28),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Talent',
                          textAlign: TextAlign.start,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  fontSize: 28,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..color = Colors.white
                                    ..strokeWidth = 1),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Models',
                          textDirection: TextDirection.ltr,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontSize: 28,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  left: 20,
                  bottom: 40,
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
                                text: "une nouvelle generation",
                                style: TextStyle(
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..color = Colors.white
                                      ..strokeWidth = 1)),
                            TextSpan(text: ' forte et responsable ')
                          ]))),
            ],
          )),
    );
  }
}
