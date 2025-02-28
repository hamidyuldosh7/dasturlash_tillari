import 'package:dasturlash_tillari/pizza_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'cars_page.dart';
import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void nextToPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
        return CarsPage(image: '',);
      }));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextToPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/loading.json"),
      ),
    );
  }
}


