import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/enum/cathegories.dart';
import 'package:iceb/data/repository_impl/repository_impl.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/communication/view/communication.dart';
import 'package:iceb/presentation/innovation/view/innovation.dart';

import 'package:iceb/presentation/sport/view/sport.dart';

class StoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StoryController({required RepositoryImpl repositoryImpl})
      : _repositoryImpl = repositoryImpl;
  final RepositoryImpl _repositoryImpl;
 static  List<CelebrityEntity> celebrities = List.empty();
  late TabController tabController;

  Rx<int> tabbarIndex = 0.obs;
  List<Widget> pages = [
     Communication(),
    const Innovation(),
    const Sport(),
  ];
  List<String> cathegories = List.generate(
      Categories.values.length,
      (index) => Categories.values[index]
          .toString()
          .split('.')
          .last
          .capitalizeFirst!,);

  void setTabbarViewIndex(int index) {
    tabController.index = index;
  }

  Future<void> getCelebrities() async {
    celebrities =
        await _repositoryImpl.getCelebrities().then((value) => value.toList());
  }

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: cathegories.length, vsync: this)
      ..addListener(() {
        tabbarIndex.value = tabController.index;
        update();
      });
    getCelebrities();
  }

  @override
  void onClose() {
    tabController.dispose();

    super.onClose();
  }
}
