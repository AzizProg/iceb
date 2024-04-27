import 'package:get/get.dart';
import 'package:iceb/core/enum/cathegories.dart';

import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class CommunicationController extends GetxController {
  List<CelebrityEntity> celebrities = List.empty();


  void getMediaCelebrities() {
    print(celebrities);
    celebrities = StoryController.celebrities
        .where((element) => element.category == Categories.communication)
        .toList();
  }

  @override
  void onInit() {
    getMediaCelebrities();
    super.onInit();
  }
}
