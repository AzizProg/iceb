import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedDefaultTextStyle(
          style: isTab
              ? Theme.of(context).textTheme.labelMedium!
              : Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: const Color(0xFFD9D9D9).withOpacity(.6),
                  ),
          duration: const Duration(milliseconds: 300),
          child: Text(title),),
    );
  }
}
