import 'package:flutter/material.dart';
import 'package:listener/Controller/Listcontroller.dart';
import 'package:provider/provider.dart';
class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder(
        future: Provider.of<Listcontroller>(context).read(),
        builder: (context,snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else if(snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context,index) {
                  return ListTile(
                    title: Text(snapshot.data?[index].name??"nodata"),
                    subtitle: Text(snapshot.data?[index].bio??"nodata"),
                  );
                }
            );
          }
          else{
            return Center(
              child: Text("Something went wrong"),
            );
          }
        }
      ),
    );
  }
}
