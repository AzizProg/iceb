import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iceb/presentation/sport/controller/sport_controller.dart';
import 'package:iceb/presentation/story/component/custom_pageview.dart';

class Sport extends GetView<SportController> {
  const Sport({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageView(celebrities: controller.celebrities);
  }
}
