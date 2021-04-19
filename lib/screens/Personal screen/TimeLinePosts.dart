import 'package:flutter/material.dart';
import 'package:personal_app/Models/constants.dart';
import 'package:personal_app/screens/Personal%20screen/PostWithTimLine.dart';

class TimeLinePosts extends StatefulWidget {
  @override
  _TimeLinePostsState createState() => _TimeLinePostsState();
}

class _TimeLinePostsState extends State<TimeLinePosts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...demoData.map((e) => PostWithTimeLine(e)),
      ],
    );
  }
}
