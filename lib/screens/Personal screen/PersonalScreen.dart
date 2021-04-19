import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_app/screens/Personal%20screen/TimeLinePosts.dart';

import 'HeaderProfile.dart';

import 'package:flutter_email_sender/flutter_email_sender.dart';

import 'PersonalDetailsCart.dart';

class PersonalDetailsScreen extends StatefulWidget {
  @override
  _PersonalDetailsScreenState createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderProfile(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 6),
                    Text(
                      'Ahmed Magdy',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('Flutter Developer'),
                    SizedBox(
                      height: 20,
                    ),
                    PersonalDetailsCart(),
                    SizedBox(height: 40),
                    TimeLinePosts(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
