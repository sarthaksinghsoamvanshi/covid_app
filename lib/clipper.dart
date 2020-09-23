import 'package:flutter/material.dart';
class Roundclipper extends CustomClipper<Path> {
  final height;
  final width;

  Roundclipper({this.height, this.width});
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(width / 2, height, width, height - 80);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}