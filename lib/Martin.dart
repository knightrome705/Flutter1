import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Martin1 extends StatefulWidget {
  const Martin1({super.key});

  @override
  State<Martin1> createState() => _Martin1State();
}

class _Martin1State extends State<Martin1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(child: ElevatedButton(onPressed: ()async{
        await Fluttertoast.showToast(msg:"Submitted");
      },child: Text("submit"),)),
    );
  }
}
