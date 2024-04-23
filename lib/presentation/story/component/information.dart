import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/helpers/asset_helper.dart';
import 'package:iceb/presentation/profil/view/profil_view.dart';
import 'package:iceb/presentation/story/component/celebrity.dart';

class InformationSection extends StatefulWidget {
  const InformationSection({super.key});

  @override
  State<InformationSection> createState() => _InformationSectionState();
}

class _InformationSectionState extends State<InformationSection>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> celebrities = [
    {
      'name': 'EDITH BROU',
      "asset": AssetsHelper.edithBrou,
    },
    {
      'name': 'NABOU FALL',
      "asset": AssetsHelper.nabou,
    },
    {
      'name': 'OLIVIA',
      'asset': AssetsHelper.olivia,
    },
  ];
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
      itemCount: 3,
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
        final celebrity = celebrities[index];
        return Celebrity(
          fixed: _currentIndex == index,
          asset: celebrity["asset"] as String,
          name: celebrity["name"] as String, onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilView(),
            ),
          );
        },
        );
      },
    );
  }
}
