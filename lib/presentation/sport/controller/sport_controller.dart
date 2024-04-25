import 'package:get/get.dart';

import '../../../core/enum/cathegories.dart';
import '../../../domain/entity/celebrity.dart';
import '../../story/controller/story_controller.dart';

class SportController extends GetxController {
  List<CelebrityEntity> celebrities = List.empty();


  void getSportCelebrities() {
    celebrities = StoryController.celebrities
        .where((element) => element.cathegory == Cathegories.sport)
        .toList();
  }

  @override
  void onInit() {
    getSportCelebrities();
    super.onInit();
  }
}