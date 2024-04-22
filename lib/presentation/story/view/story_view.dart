import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/component/status_bar.dart';
import 'package:iceb/presentation/story/component/custom_tabbar.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class StoryView extends GetView<StoryController> {
  StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          isHome: false,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              const Positioned.fill(child: Background()),
              const Positioned.fill(child: GlassWrapper()),
              Container(
                margin: const EdgeInsets.only(
                  top: kToolbarHeight + 50,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    CustomTabbar(),
                    const SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: controller.tabController,
                        children: List.generate(controller.pages.length,
                            (index) => controller.pages[index]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
