import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:listener/Controller/Darkcontroller.dart";
import "package:listener/provider.dart";
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("ui loaded");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         // Text(Provider.of<valuecontroller>(context).count.toString()),
          Consumer<valuecontroller>(
            builder: (context,value,_) {
              return Text(value.count.toString());
            }
          ),
          ElevatedButton(onPressed: (){
            //print("button loaded");
            //Provider.of<valuecontroller>(context,listen: false).increment();
            Provider.of<Darkcontroller>(context,listen: false).change();
          }, child:Text("count")),
          ElevatedButton(onPressed:(){
            Provider.of<valuecontroller>(context,listen: false).increment();
          }, child:Text("count") )
        ],
      ),
    );
  }
}
