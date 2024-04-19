import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/helpers/asset_helper.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return        ColorFiltered(
        colorFilter: const ColorFilter.mode(
            Colors.white, BlendMode.saturation),
        child:
        Image.asset(AssetsHelper.background, fit: BoxFit.cover));
  }
}
