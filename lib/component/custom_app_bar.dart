import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:iceb/presentation/story/component/custom_tab.dart';
import 'package:iceb/presentation/story/view/story_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({super.key, this.isHome = true});

  bool isHome;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 15),
      child: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: Center(
          child: isHome
              ? InkWell(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                  // customBorder: const StadiumBorder(),
                  onTap: () {
                  Get.to(()=>StoryView());
                  },
                  child: const FaIcon(
                    FontAwesomeIcons.barsStaggered,
                    color: Colors.white,
                  ))
              : InkWell(
                  onTap: () => Get.back(),
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
        ),
        actions: isHome
            ? const [
                FaIcon(
                  FontAwesomeIcons.language,
                  color: Colors.white,
                ),
              ]
            : null,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light),
        centerTitle: true,
        title: Text(
          'iCeb',
          style: Theme.of(context).textTheme.titleMedium,
        ),

      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
}
