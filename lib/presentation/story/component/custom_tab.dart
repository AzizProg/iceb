import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  CustomTab({
    required this.title,
    required this.isTab,
    required this.onTap,
    super.key,
  });
  final String title;
  final bool isTab;
  Function() onTap;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab>
    with SingleTickerProviderStateMixin {
  final double _dividerWidth = 0;
  //late AnimationController _controller;
  //late Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _getDividerWidth();
      print(_dividerWidth);
    });
  }

  // void _getDividerWidth() {
  //   final size = TextPainter(
  //     textDirection: TextDirection.ltr,
  //     text: TextSpan(
  //       text: 'information',
  //       style: widget.isTab
  //           ? Theme.of(context).textTheme.labelMedium
  //           : Theme.of(context).textTheme.labelSmall?.copyWith(
  //                 color: const Color(0xFFD9D9D9).withOpacity(.6),
  //               ),
  //     ),
  //   );
  //
  //   size.layout();
  //   final width = size.width;
  //
  //   setState(() {
  //     _dividerWidth = width / 3;
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: AnimatedDefaultTextStyle(
          style: widget.isTab
              ? Theme.of(context).textTheme.labelMedium!
              : Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: const Color(0xFFD9D9D9).withOpacity(.6),
                  ),
          duration: const Duration(milliseconds: 300),
          child: Text(widget.title),),
    );
  }
}
