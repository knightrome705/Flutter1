import 'package:flutter/material.dart';
class Wid2 extends StatelessWidget {
  void Function() onTap;
  String text;
  Wid2({required this.onTap,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.green,
        child: Center(child: Text("Submit")),
      ),
    );
  }
}
