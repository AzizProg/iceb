import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EDITH BROU',
              style:
                  Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Activiste dans le journaliste, Mme dirige un bon d’information provenant de source sûr dont elle seule a le secret.',

              // textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 14, height: 1.5, fontWeight: FontWeight.w500),
            )
          ],
        );
      },
    );
  }
}
