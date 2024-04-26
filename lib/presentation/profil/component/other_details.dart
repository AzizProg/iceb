import 'package:animate_do/animate_do.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iceb/domain/entity/celebrity.dart';

class OtherDerails extends StatefulWidget {
  const OtherDerails({super.key, required this.celebrity});
  final CelebrityEntity celebrity;
  @override
  State<OtherDerails> createState() => _OtherDerailsState();
}

class _OtherDerailsState extends State<OtherDerails>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;
  bool pageChanged = false;
  List<String> details = [];
  @override
  void initState() {
    details.addAll(widget.celebrity.props
        .where((prop) =>
            prop != widget.celebrity.name &&
            prop != widget.celebrity.id &&
            prop != widget.celebrity.category)
        .map((e) => e.toString()));
    print(details);

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    runAnimate();
    super.initState();
  }

  void runAnimate() {
    if (_controller.isCompleted) {
      _controller.repeat();
    }
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: FadeInUp(
        curve: Curves.ease,
        from: 800,
        duration: const Duration(seconds: 1),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, widget) {
            return Opacity(
              opacity: _animation.value,
              child: Text(
                details[0],
                overflow: TextOverflow.visible,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontSize: 18,
                      height: 1.5,
                    ),
              ),
            );
          },
        ),
      ),
    );
  }
}
