import 'package:example/review_place.dart';
import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Review("assets/img/avatar.jpg", "Varuna Yasas", "1 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/avatar.jpg", "Anahí Salgado", "2 review · 5 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/avatar.jpg", "Gissele Thomas", "2 review · 2 photos", "There is an amazing place in Sri Lanka"),
        Review("assets/img/avatar.jpg", "Alex Pintos", "2 review · 2 photos", "There is an amazing place in Sri Lanka"),

      ],
    );
  }
}