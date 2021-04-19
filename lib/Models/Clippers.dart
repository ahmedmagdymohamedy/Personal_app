import 'package:flutter/material.dart';

class PersonaHeader extends CustomClipper<Path> {
  double edgeRadus;
  double circleRadus;
  PersonaHeader({this.edgeRadus = 30, this.circleRadus = 60});
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height - edgeRadus);
    path.quadraticBezierTo(0, size.height, edgeRadus, size.height);
    path.lineTo((size.width / 2) - circleRadus, size.height);
    path.arcToPoint(Offset(size.width / 2 + circleRadus, size.height),
        clockwise: true, radius: Radius.circular(1));
    path.lineTo(size.width - edgeRadus, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - edgeRadus);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class SplashCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width * 0.25, size.height, size.width * 0.5, size.height * 0.80);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.60, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
