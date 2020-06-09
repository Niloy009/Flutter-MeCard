import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  IconData imageIcon;
  String label;

  InfoBox({this.imageIcon = Icons.phone, this.label = "Label"});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      margin: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            this.imageIcon,
            size: 25,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            this.label,
            style: TextStyle(fontSize: 22, letterSpacing: 2),
          )
        ],
      ),
    );
  }
}
