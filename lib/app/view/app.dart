import 'package:flutter/material.dart';
import 'package:iceb/core/constants/app_theme.dart';
import 'package:iceb/presentation/onboarding/view/onboarding_view.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const OnBoardingView(),
    );
  }
}
