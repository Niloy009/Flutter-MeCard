import 'package:flutter/material.dart';

import '../widgets/NameInfo.dart';
import '../widgets/InfoBox.dart';

class MeInfo extends StatefulWidget {
  @override
  _MeInfoState createState() => _MeInfoState();
}

class _MeInfoState extends State<MeInfo> {
  bool showphone = false;
  bool showemail = false;
  bool showwork = false;
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
                onPress: () {
                  setState(() {
                    showphone = !showphone;
                  });
                },
                imageIcon: showphone ? Icons.phone : null,
                label:
                    showphone ? "01752836632" : "Want To See My Phone Number?",
              ),
              SizedBox(
                height: 20,
              ),
              InfoBox(
                onPress: () {
                  setState(() {
                    showemail = !showemail;
                  });
                },
                imageIcon: showemail ? Icons.email : null,
                label: showemail
                    ? "niloysaha.887@gmail.com"
                    : 'Want to see my Email?',
              ),
              SizedBox(
                height: 20,
              ),
              InfoBox(
                onPress: () {
                  setState(() {
                    showwork = !showwork;
                  });
                },
                imageIcon: showwork ? Icons.work : null,
                label: showwork
                    ? "North South University"
                    : "Want to see my institution?",
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
