import 'package:flutter/material.dart';

class ImageCurve extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 40.0);
    path.quadraticBezierTo(size.width/4, size.height,size.width/2, size.height);
    path.quadraticBezierTo(size.width - size.width/4, size.height,size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}