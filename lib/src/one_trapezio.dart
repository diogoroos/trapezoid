import 'package:flutter/cupertino.dart';

class OneTrapezio extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..addPolygon([
        const Offset(0, 0), //top left height right
        Offset(size.width, 0), //top right end right
        Offset(size.width * 0.90, size.height), //end right height right
        Offset(size.width * 0.10, size.height), //end left height left
      ], true);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
