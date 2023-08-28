import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My_Widget/Widgets.dart';

class MM extends StatefulWidget {
  const MM({Key? key}) : super(key: key);

  @override
  State<MM> createState() => _MMState();
}

class _MMState extends State<MM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Wid(
        value: "Data",
        onTap: (){
          print("hai");
        },
      ),
    );
  }
}

