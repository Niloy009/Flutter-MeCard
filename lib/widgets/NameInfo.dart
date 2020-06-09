import 'package:flutter/material.dart';

class NameInfo extends StatelessWidget {
  String name;
  String designation;
  String imageLocation;

  NameInfo(
      {this.name = "Your Name",
      this.designation = "Your Designation",
      this.imageLocation = "Your image location"});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(this.imageLocation),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.name,
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.designation.toUpperCase(),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 2),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.white,
          width: 250,
          height: 1,
        )
      ],
    );
  }
}
