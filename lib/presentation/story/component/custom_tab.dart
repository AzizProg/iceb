import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

class _CustomTabState extends State<CustomTab> {
  double dividerWidth = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _getDividerWidth();
    });
  }

  void _getDividerWidth() {
    final size = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: 'information',
        style: widget.isTab
            ? Theme.of(context).textTheme.labelMedium
            : Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: const Color(0xFFD9D9D9).withOpacity(.6),
                ),
      ),
    );

    size.layout();
    final width = size.width;
    setState(() {
      dividerWidth = width / 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
 onTap: widget.onTap,
      child: Column(

        children: [
          Text(
            widget.title,
            maxLines: 1,
            style: widget.isTab
                ? Theme.of(context).textTheme.labelMedium
                : Theme.of(context).textTheme.labelSmall?.copyWith(
              color: const Color(0xFFD9D9D9).withOpacity(.6),
            ),
          ),
          Visibility(
            visible: widget.isTab,
            maintainSize: true,
            maintainAnimation: true,
            maintainInteractivity: true,
            maintainSemantics: true,
            maintainState: true,
            replacement: Container(),
            child: SizedBox(
              height: 15,
              width: dividerWidth,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: const Divider(
                  thickness: 2,
                  color: Colors.white,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
