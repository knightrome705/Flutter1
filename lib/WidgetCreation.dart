import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wd extends StatefulWidget {
  const Wd({Key? key}) : super(key: key);

  @override
  State<Wd> createState() => _WdState();
}

class _WdState extends State<Wd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){},
          child: Container(
            height: MediaQuery.of(context).size.height*0.1,
            // width: 100,
             width: MediaQuery.of(context).size.width*0.7,
            child:  Center(child: Text("submit",style: TextStyle(color:Colors.green,fontSize: 20),)),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
            ),
          ),
        ),
      ),
    );
  }
}
