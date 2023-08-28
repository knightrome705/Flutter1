import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:listener/Controller/saticdetails.dart';
import 'package:listener/Controller/Model.dart';


class Listcontroller extends ChangeNotifier{
  List<Details> data=[];
  Future<List<Details>?> read()async{
    Response response=await get(Uri.parse(Darkc.url));
    if(response.statusCode==200){
      List result=jsonDecode(response.body);
      result.forEach((element) {
        // Details details=Details(
        //     name: element["name"],
        //     language: element["language"]);
        //     data.add(details);//           list of objeccts
       data.add(Details.fromJson(element));  //object creation??
      });
      return data;
    }
    notifyListeners();
  }
}