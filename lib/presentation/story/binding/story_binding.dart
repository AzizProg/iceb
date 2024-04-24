import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:iceb/data/data_source/remote/remote_data_source_impl.dart';
import 'package:iceb/data/repository_impl/repository_impl.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class StoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StoryController(
        repositoryImpl: RepositoryImpl(
            remote:
                RemoteDataSourceImpl(firestore: FirebaseFirestore.instance))));
  }
}
