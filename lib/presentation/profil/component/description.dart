import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iceb/domain/entity/celebrity.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.celebrity});
  final CelebrityEntity celebrity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          celebrity.name.toUpperCase(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Text(
                celebrity.biography,
                // textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
              );
            },
          ),
        ),
      ],
    );
  }
}
