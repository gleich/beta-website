import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;
  final double start;
  final double stop;
  final Duration duration;

  FadeIn(
      {@required this.delay,
      @required this.child,
      @required this.start,
      @required this.stop,
      @required this.duration});

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween(
      [
        Track("opacity").add(
          Duration(milliseconds: 500),
          Tween(begin: 0.0, end: 1.0),
        ),
        Track("translateX").add(duration, Tween(begin: start, end: stop),
            curve: Curves.easeOut)
      ],
    );

    return ControlledAnimation(
      delay: Duration(
        milliseconds: (300 * delay).round(),
      ),
      duration: tween.duration,
      tween: tween,
      child: child,
      builderWithChild: (context, child, animation) => Opacity(
        opacity: animation["opacity"],
        child: Transform.translate(
            offset: Offset(animation["translateX"], 0), child: child),
      ),
    );
  }
}
