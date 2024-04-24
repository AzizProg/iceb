import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/profil/view/profil_view.dart';
import 'package:iceb/presentation/story/component/celebrity.dart';
import 'package:iceb/presentation/story/controller/story_controller.dart';

class InformationSection extends StatefulWidget {
  const InformationSection({super.key});

  @override
  State<InformationSection> createState() => _InformationSectionState();
}

class _InformationSectionState extends State<InformationSection>
    with SingleTickerProviderStateMixin {
  final controller = Get.find<StoryController>();
  // List<Map<String, dynamic>> celebrities = [
  //   {
  //     'name': 'EDITH BROU',
  //     'asset': AssetsHelper.edithBrou,
  //   },
  //   {
  //     'name': 'NABOU FALL',
  //     'asset': AssetsHelper.nabou,
  //   },
  //   {
  //     'name': 'OLIVIA',
  //     'asset': AssetsHelper.olivia,
  //   },
  // ];
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.68);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: controller.celebrities.length,
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
      CelebrityEntity _celebrity = controller.celebrities[index];
        return Celebrity(
          fixed: _currentIndex == index,
          asset: _celebrity.image,
          name: _celebrity.name, onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  ProfilView(celebrity: _celebrity,),
            ),
          );
        },
        );
      },
    );
  }
}
