import 'package:flutter/material.dart';
class DescripcionPlace extends StatelessWidget{
  final String namePlace;
 final  int stars;
  final String descriptionPlace;

  DescripcionPlace(this.namePlace,this.stars,this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final background= Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("fondos.jpg")
          ),
          )
        );
    final star_half= Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );
    final star = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );
    final star_border = Container(
      margin: const EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final title_star = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: 320.0,
              left: 20.0,
              right: 20.0
          ),
          child:  Text(
            namePlace,
            style: const TextStyle(
                fontFamily: "TODAY",
                fontSize: 30.0,
                fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        ),
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
          top: 10.0,
          left: 20.0,
          right: 20.0
      ),
      child:  Text(
        descriptionPlace,
        style: const TextStyle(
            fontFamily: "TODAY",
            fontSize: 11.0
        ),
        textAlign: TextAlign.justify,
      ),
    );

    final content = Container(
      child: Column(
        children: <Widget>[
          background,
          title_star,
          description,

        ],
      ),
    );
    return content;
  }
}