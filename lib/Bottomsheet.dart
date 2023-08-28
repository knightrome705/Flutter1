import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gdeg extends StatefulWidget {
  const Gdeg({Key? key}) : super(key: key);

  @override
  State<Gdeg> createState() => _GdegState();
}

class _GdegState extends State<Gdeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemBuilder: (context,index) {
          return Column(
            children: [
              Container(
                height: 200,
                width: 100,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return ListTile(
                      title: Text("ftf"),
                    );
                  }
                ),
              )
            ],
          );
        }
      ),
    );
  }
}
