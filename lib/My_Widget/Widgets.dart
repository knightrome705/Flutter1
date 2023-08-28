import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wid extends StatelessWidget {
  String? value;
  void Function() onTap;
  Wid({required this.value,required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height*0.1,
        // width: 100,
        width: MediaQuery.of(context).size.width*0.7,
        child:  Center(child: Text(value!,style: TextStyle(color:Colors.green,fontSize: 20),)),
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30)
        ),
      ),
    );
  }
}
