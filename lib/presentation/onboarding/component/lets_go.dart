import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/core/extensions/size_helper.dart';
import 'package:iceb/presentation/home/view/home_view.dart';

class LetsGo extends StatelessWidget {
  const LetsGo({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Get.to(()=>const HomeView());
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        width: context.getWidth(150),
        height: context.getHeight(40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          color: Colors.transparent,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
              child: Text(
                "Let's go",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Spacer(),
            Container(
              width: context.getWidth(30),
              height: context.getHeight(30),
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: FittedBox(
                  child: Text(
                'iCeb',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.black),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
