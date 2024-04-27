import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:iceb/data/data_source/remote/remote_data_source_impl.dart';
import 'package:iceb/data/repository_impl/repository_impl.dart';
import 'package:iceb/presentation/innovation/controller/innovation_controller.dart';

import 'package:iceb/presentation/sport/controller/sport_controller.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

import '../../communication/controller/communication_controller.dart';

class StoryBinding implements Bindings {
  @override
  void dependencies() {
    Get
      ..put(StoryController(
          repositoryImpl: RepositoryImpl(
              remote:
                  RemoteDataSourceImpl(firestore: FirebaseFirestore.instance))))
      ..lazyPut(CommunicationController.new, fenix: true)
      ..lazyPut(InnovationController.new, fenix: true)
      ..lazyPut(SportController.new, fenix: true);
  }
}
