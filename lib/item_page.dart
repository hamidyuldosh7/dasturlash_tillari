import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _container;
  late Animation<Size> _myAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _container =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _myAnimation = Tween<Size>(begin: Size(200, 200), end: Size(600, 600))
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
              child: Image.asset("assets/heart.png"),
            );
          }),
    ));
  }
}
