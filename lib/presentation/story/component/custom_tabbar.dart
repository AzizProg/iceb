import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/presentation/story/component/custom_tab.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class CustomTabbar extends GetView<StoryController> {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight(40),
      child: Obx(
        () {
          return TabBar(
              isScrollable: true,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              indicatorColor: Colors.white,
              tabAlignment: TabAlignment.start,
              physics: const BouncingScrollPhysics(),
              //labelPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              indicatorSize: TabBarIndicatorSize.label,
              indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.white),
                ),
              controller: controller.tabController,
              tabs: controller.cathegories
                  .map((e) => CustomTab(
                onTap: ()=>controller.setTabbarViewIndex(controller.cathegories.indexOf(e)),
                        title: e,
                        isTab: controller.cathegories.indexOf(e) ==
                            controller.tabbarIndex.value,
                      ))
                  .toList(),);
        },
      ),
    );
  }
}
// ListView.separated(
// scrollDirection: Axis.horizontal,
// shrinkWrap: true,
// physics: const BouncingScrollPhysics(),
// itemCount: controller.cathegories.length,
// separatorBuilder: (context, int) {
// return const SizedBox(
// width: 10,
// );
// },
// itemBuilder: (context, index) {
// final cathegory = controller.cathegories[index];
// return Obx(
// () => CustomTab(
// title: cathegory,
// isTab: controller.cathegories.indexOf(cathegory) ==
// controller.tabbarIndex.value,
// onTap: () {
// controller.setTabbarViewIndex(index);
// },
// ),
// );
// },
// ),
