import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/presentation/media/controller/media_controller.dart';
import 'package:iceb/presentation/story/component/custom_pageview.dart';


class MediaCommunication extends GetView<MediaController> {
   MediaCommunication({super.key});
  //final _controller = Get.find<MediaController>();

  @override
  Widget build(BuildContext context) {
    return CustomPageView(celebrities: controller.celebrities);
  }
}
