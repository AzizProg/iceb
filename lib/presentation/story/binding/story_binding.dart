import 'package:get/get.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class StoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StoryController());
  }
}
