import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Anim extends StatefulWidget {
  const Anim({Key? key}) : super(key: key);

  @override
  State<Anim> createState() => _AnimState();
}

class _AnimState extends State<Anim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Lottie.asset("assests/animation_llgmzb63.json"),
    );
  }
}
