import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/presentation/story/component/custom_tab.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class CustomTabbar extends GetView<StoryController> {
  CustomTabbar({super.key});
  //TabController tabController;

  List<String> cathegories = [
    'information',
    'Founder',
    'Artistes',
    'Influenceurs',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight(40),

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: controller.cathegories.length,
        separatorBuilder: (context, int) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (context, index) {
          final cathegory = controller.cathegories[index];
          return Obx(
            () => CustomTab(
              title: cathegory,
              isTab: controller.cathegories.indexOf(cathegory) ==
                  controller.tabbarIndex.value,
              onTap: () {
               controller.setTabbarViewIndex(index);
              },
            ),
          );
        },
      ),
    );
  }
}
