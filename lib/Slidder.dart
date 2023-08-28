import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sld extends StatefulWidget {
  const Sld({Key? key}) : super(key: key);

  @override
  State<Sld> createState() => _SldState();
}

class _SldState extends State<Sld> {
  List<String> images=["assests/img.jpg","assests/img.jpg","assests/img.jpg","assests/img.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body:CarouselSlider.builder(

        itemBuilder: (BuildContext context,int index,i) =>Container(
          child: Image.asset(
          images[index],

      ),
      ),
        options: CarouselOptions(
        autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 1.0,
          initialPage: 0

        ), itemCount: images.length,

      ) ,
    );
  }
}
