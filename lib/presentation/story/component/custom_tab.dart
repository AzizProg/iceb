import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iceb/core/extensions/size_helper.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Container(
          height: context.getHeight(4),

          margin: const EdgeInsets.only(top: 5),
          child: FractionallySizedBox(
            widthFactor: 0.4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
              ),
              width: double.infinity,

            ),
          ),
        )
      ],
    );
  }
}
