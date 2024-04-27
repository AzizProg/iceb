import 'package:flutter/material.dart';
import 'package:iceb/domain/entity/celebrity.dart';
import 'package:iceb/presentation/profil/view/profil_view.dart';
import 'package:iceb/presentation/story/component/celebrity.dart';

class CustomPageView extends StatefulWidget {
  CustomPageView({super.key, required this.celebrities});
  final List<CelebrityEntity> celebrities;
  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentIndex = 0;
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.72);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      itemCount: widget.celebrities.length,
      onPageChanged: (value) {
        setState(() {
          _currentIndex = value;
        });
      },
      itemBuilder: (context, index) {
        final celebrity = widget.celebrities[index];
        return Celebrity(
          fixed: _currentIndex == index,
          asset: celebrity.image,
          name: celebrity.name,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilView(
                  celebrity: celebrity,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
