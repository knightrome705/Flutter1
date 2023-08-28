import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
class Imageview extends StatefulWidget {
  const Imageview({Key? key}) : super(key: key);

  @override
  State<Imageview> createState() => _ImageviewState();
}

class _ImageviewState extends State<Imageview> {
show()async{
DateTime? dateTime=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate:DateTime(2021), lastDate: DateTime(2025));
 var current=DateFormat.yMMMd().format(dateTime!);
 print(current);
// print(dateTime);
// DateTime? formatedDate=DateTime.now();
// print(formatedDate);
// String formated=DateFormat.yMd().add_jm().format(formatedDate);
// print(formated);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      //body: Image(image:AssetImage("assests/img.jpg")),
      //body: Lottie.asset("assests/animation_lleodurh.json"),
      body: Column(
        children: [
          Center(child: Text("Hello User",style: GoogleFonts.caveat(fontSize: 30),)),
               ElevatedButton(onPressed: (){show();
             },child: Text("date"),) ,
        ],
      ),

    );
  }
}
