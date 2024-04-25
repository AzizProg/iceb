import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iceb/presentation/innovation/controller/innovation_controller.dart';
import 'package:iceb/presentation/story/component/custom_pageview.dart';

class Innovation extends GetView<InnovationController> {
  const Innovation({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageView(celebrities: controller.celebrities);
  }
}
