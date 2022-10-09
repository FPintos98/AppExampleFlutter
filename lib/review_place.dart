import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String path_image = 'assets/img/avatar.jpg';
  String userName = "Nombre user";
  String details = "Detalles ";
  String comment = "Comentariios sdfsdf sa";

  Review(this.path_image, this.userName, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final useName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        userName,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 17.0),
      ),
    );
    final userInfo = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(
          details,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 17.0, color: Color(0xFFa3a5a7)),
        ));
    final usercomment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 17.0, color: Color(0x00ffa3a5a7)),
      ),
    );
    final photo = Container (
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(path_image)
          )
      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        useName,
        userInfo,
        usercomment,
      ],
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
