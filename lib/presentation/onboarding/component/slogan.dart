import 'package:flutter/material.dart';

class Slogan extends StatelessWidget {
  const Slogan({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Une personne,\n",
            style: Theme.of(context).textTheme.bodyLarge,
            children: const [TextSpan(text: "Une identité remarquable")]));
  }
}
