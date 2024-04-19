import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iceb/component/glass_wrapper.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
          GlassWrapper(),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
