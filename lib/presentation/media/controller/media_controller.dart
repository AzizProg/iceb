import 'package:get/get.dart';
import 'package:iceb/core/enum/cathegories.dart';

import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class MediaController extends GetxController {
  List<CelebrityEntity> celebrities = List.empty();


  void getMediaCelebrities() {
    celebrities = StoryController.celebrities
        .where((element) => element.cathegory == Cathegories.media)
        .toList();
  }

  @override
  void onInit() {
    getMediaCelebrities();
    super.onInit();
  }
}
