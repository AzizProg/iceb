import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iceb/presentation/story/component/custom_pageview.dart';

import '../controller/communication_controller.dart';


class Communication extends GetView<CommunicationController> {
  Communication({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageView(celebrities: controller.celebrities);
  }
}
