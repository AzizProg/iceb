import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iceb/component/background.dart';
import 'package:iceb/component/custom_app_bar.dart';
import 'package:iceb/component/glass_wrapper.dart';
import 'package:iceb/component/status_bar.dart';
import 'package:iceb/presentation/story/component/celebrity.dart';
import 'package:iceb/presentation/story/component/custom_tab.dart';

class StoryView extends StatelessWidget {
  StoryView({super.key});
  GlobalKey tabKey = GlobalKey();
  int point = 1;
  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            isHome: false,
          ),
          backgroundColor: Colors.black,
          body: SafeArea(
            top: false,
            child: Stack(
              children: [
                const Positioned.fill(child: Background()),
                const Positioned.fill(child: GlassWrapper()),
                Container(
                  margin: const EdgeInsets.only(
                      top: kToolbarHeight + 50, left: 10, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                              child: CustomTab(
                            title: "Information",
                          )),
                          Flexible(
                              child: Text(
                            'Startup Founder',
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color: const Color(0xFFD9D9D9)
                                        .withOpacity(.6)),
                          )),
                          Flexible(
                              child: Text(
                            'Artistes',
                            maxLines: 1,
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                    color: const Color(0xFFD9D9D9)
                                        .withOpacity(.6)),
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: PageView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 2,
                            itemBuilder: (_, index) {
                              return const Celebrity();
                            }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
