import 'package:flutter/material.dart';
import 'package:listener/My_Widget/Widget2.dart';
class Martin extends StatefulWidget {
  const Martin({Key? key}) : super(key: key);

  @override
  State<Martin> createState() => _MartinState();
}

class _MartinState extends State<Martin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Wid2(onTap:(){},text:"hai",)
    );
  }
}
