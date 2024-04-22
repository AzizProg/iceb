import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iceb/presentation/story/component/celebrity.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Celebrity(),
      ],
    );
  }
}
