import 'package:flutter/material.dart';

class AnimationWithBuilder extends StatefulWidget {
  const AnimationWithBuilder({super.key});

  @override
  State<AnimationWithBuilder> createState() => _AnimationWithBuilderState();
}

class _AnimationWithBuilderState extends State<AnimationWithBuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    sizeAnimation = Tween<double>(begin: 100, end: 500).animate(
      animationController,
    );

    animationController.addStatusListener(
      (status) {
        if (AnimationStatus.completed == status) {
          animationController.reverse();
        } else if (AnimationStatus.dismissed == status) {
          animationController.forward();
        }
      },
    );

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GrowTransition(
        animation: sizeAnimation,
        child: const AnimatedLogo(),
      ),
    );
  }
}

class GrowTransition extends StatelessWidget {
  const GrowTransition({
    super.key,
    required this.child,
    required this.animation,
  });

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? c) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}

class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo();
  }
}
