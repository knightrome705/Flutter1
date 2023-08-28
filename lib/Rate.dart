import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  State<Rate> createState() => _RateState();
}

class _RateState extends State<Rate> {
  var rating=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      endDrawer: Drawer(),
      body:  RatingBar(
        initialRating: 0,
        minRating: 0,
        maxRating: 5,
        allowHalfRating: true,
        itemSize: 30.0,
        ratingWidget: RatingWidget(
          full: const Icon(Icons.star, color: Colors.blueAccent),
          half: const Icon(Icons.star_half, color: Colors.blueAccent),
          empty: const Icon(Icons.star_border, color: Colors.blueAccent),
        ),
        onRatingUpdate: (rating) {
          // Rating is updated
          log(rating);
        },
      ),
    );
  }
}
