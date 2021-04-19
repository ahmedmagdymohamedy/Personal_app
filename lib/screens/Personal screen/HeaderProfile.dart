import 'package:flutter/material.dart';
import 'package:personal_app/Models/Clippers.dart';
import 'package:personal_app/Models/constants.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      // decoration: BoxDecoration(color: Colors.red),
      child: Stack(
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 130, end: 60),
            duration: Duration(milliseconds: 400),
            curve: Curves.easeOut,
            builder: (crx, tween, child) => ClipPath(
                clipper: PersonaHeader(edgeRadus: 30, circleRadus: tween),
                child: child),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: 100,
              child: Center(
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  builder: (ctx, radiusVal, child) => CircleAvatar(
                    backgroundImage: AssetImage('images/person.jpg'),
                    radius: radiusVal * 50,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
