import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/data/repository_impl/repository_impl.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/story/component/artistes.dart';
import 'package:iceb/presentation/story/component/founder.dart';
import 'package:iceb/presentation/story/component/information.dart';

class StoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  StoryController({required RepositoryImpl repositoryImpl}):_repositoryImpl=repositoryImpl;
  final RepositoryImpl _repositoryImpl;
   List<CelebrityEntity> celebrities=List.empty();
  late TabController tabController;
  Rx<int> tabbarIndex = 0.obs;
  List<Widget> pages = [
    const InformationSection(),
    const FounderSection(),
    const ArtistesSection()
  ];
  List<String> cathegories = ['Information', 'Founder', 'Artistes'];

  void setTabbarViewIndex(int index) {
    tabController.index = index;
    update();
  }

  Future<void> getCelebrities() async {
    celebrities = await _repositoryImpl.getCelebrities().then((value) => value.toList());
  }
  @override
  void onInit() async{
    super.onInit();
    tabController = TabController(length: cathegories.length, vsync: this);
    tabController.addListener(() {
      tabbarIndex.value = tabController.index;
    });

  await getCelebrities();
  print(celebrities);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
