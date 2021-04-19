import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:personal_app/Models/constants.dart';

import 'package:url_launcher/url_launcher.dart';

import 'PostWidget.dart';

class PostWithTimeLine extends StatelessWidget {
  Post post;
  GlobalKey postKey;
  PostWithTimeLine(this.post);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: post.imageURL != null ? 410 : 210,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            // fit: StackFit.passthrough,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 2,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff999999),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff999999),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 48,
            child: Text(
              post.date,
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          ),
          Expanded(
            child: PostWidget(post: post),
          ),
        ],
      ),
    );
  }
}
