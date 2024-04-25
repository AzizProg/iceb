import 'package:get/get.dart';

import '../../../core/enum/cathegories.dart';
import '../../../domain/entity/celebrity.dart';
import '../../story/controller/story_controller.dart';

class InnovationController extends GetxController{
  List<CelebrityEntity> celebrities = List.empty();


  void getInnovationCelebrities() {
    celebrities = StoryController.celebrities
        .where((element) => element.cathegory == Cathegories.innovation)
        .toList();
  }

  @override
  void onInit() {
    getInnovationCelebrities();
    super.onInit();
  }
}
