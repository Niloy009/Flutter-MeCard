import 'package:flutter/material.dart';

import '../widgets/NameInfo.dart';
import '../widgets/InfoBox.dart';

class MeInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.cyan[600],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NameInfo(
                name: 'Niloy Saha Roy',
                designation: "Flutter Developer",
                imageLocation: 'asset/niloy02.jpg',
              ),
              SizedBox(
                height: 25,
              ),
              InfoBox(
                imageIcon: Icons.phone,
                label: "01752836632",
              ),
              SizedBox(
                height: 20,
              ),
              InfoBox(
                imageIcon: Icons.email,
                label: "niloysaha.887@gmail.com",
              ),
              SizedBox(
                height: 20,
              ),
              InfoBox(
                imageIcon: Icons.work,
                label: "North South University",
              ),
              SizedBox(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
