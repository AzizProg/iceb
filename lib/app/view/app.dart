import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/constants/app_theme.dart';
import 'package:iceb/presentation/onboarding/view/onboarding_view.dart';
import 'package:iceb/presentation/story/binding/story_binding.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.cupertino,
      initialBinding: StoryBinding(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const OnBoardingView(),
    );
  }
}
