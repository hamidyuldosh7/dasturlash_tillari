import 'package:flutter/material.dart';

class AnimatePulse extends StatefulWidget {
  const AnimatePulse({super.key});

  @override
  State<AnimatePulse> createState() => _AnimatePulseState();
}

class _AnimatePulseState extends State<AnimatePulse>
    with SingleTickerProviderStateMixin {
  late AnimationController _container;
  late Animation<Size> _myAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _container =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    _myAnimation = Tween<Size>(begin: Size(100, 100), end: Size(300, 300))
        .animate(
            CurvedAnimation(parent: _container, curve: Curves.bounceInOut));
    _container.forward();
    _container.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _myAnimation,
          builder: (BuildContext context, Widget? child) {
            return Container(
              height: _myAnimation.value.height,
              width: _myAnimation.value.width,
              child: Image.asset(
                "assets/img_1.png",
              ),
            );
          },
        ),
      ),
    );
  }
}
