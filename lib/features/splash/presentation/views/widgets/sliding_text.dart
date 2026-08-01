import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this._slidingAnimation});

  final Animation<Offset> _slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: _slidingAnimation,
          child: Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        );
      },
    );
  }
}
