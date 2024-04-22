import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/presentation/story/component/artistes.dart';
import 'package:iceb/presentation/story/component/founder.dart';
import 'package:iceb/presentation/story/component/information.dart';

class StoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  Rx<int> tabbarIndex = 0.obs;
  List<Widget> pages = [
    const InformationSection(),
    const FounderSection(),
    const ArtistesSection()
  ];
  List<String> cathegories = ['Information', 'Founder', 'Artistes'];


  void setTabbarViewIndex(int index){
    tabController.index=index;
    update();

  }
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: cathegories.length, vsync: this);
    tabController.addListener(() {
      tabbarIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
