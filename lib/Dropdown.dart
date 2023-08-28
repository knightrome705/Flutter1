import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drpdn extends StatefulWidget {
  const Drpdn({Key? key}) : super(key: key);

  @override
  State<Drpdn> createState() => _DrpdnState();
}

class _DrpdnState extends State<Drpdn> {
  // String first="sunday";
  String first="Sunday";
  List a=["Sunday","Monday","Tuesday","Thursday","Friday","Saturday"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [

          DropdownButton(
            value: first,
            // items: [
            //   DropdownMenuItem(child: Text("Sunday"),value: "sunday",),
            //   DropdownMenuItem(child: Text("Monday"),value: "monday",),
            //   DropdownMenuItem(child: Text("Tuesday"),value: "tuesday",),
            //   DropdownMenuItem(child: Text("Wednesday"),value: "wednesday",),
            //   DropdownMenuItem(child: Text("Thursday"),value: "thursday",),
            //   DropdownMenuItem(child: Text("Friday"),value: "friday",),
            //   DropdownMenuItem(child: Text("Saturday"),value: "saturday",)
            // ],
            items: a.map((e) {
              return DropdownMenuItem<String>(child:Text(e),value: e,);
            }).toList(),
            onChanged: (v){
             setState(() {
               first=v!;
               print(v);
             });
            },
          ),

        ],
      ),
    );
  }
}
