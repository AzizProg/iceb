
import 'package:flutter/material.dart';
import 'package:iceb/core/extensions/size_helper.dart';

class CelebrityName extends StatelessWidget {
  const CelebrityName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getThirdOfHeight / 4,
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25)),
      ),
      child:Center(
        child: Text(name,style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.black,fontSize: 24)),
      ) ,
    );
  }
}
