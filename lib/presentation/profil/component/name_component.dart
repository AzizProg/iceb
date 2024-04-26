import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iceb/domain/entity/celebrity.dart';

import '../../../core/enum/gender.dart';

class NameComponent extends StatelessWidget {
  const NameComponent({super.key, required this.celebrity});
  final CelebrityEntity celebrity;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: FittedBox(
        child: Text(
          celebrity.gender == Gender.male
              ? 'M. ${celebrity.name}'
              : 'Mme/Mlle ${celebrity.name}',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28),
        ),
      ),
    );
  }
}
