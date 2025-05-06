import 'package:flutter/material.dart';

class TCustomeCruvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
   var path = Path();
   path.lineTo(0, size.height);

   final firstCruve = Offset(0, size.height - 20);
   final lastCruve = Offset(30, size.height - 20);
   path.quadraticBezierTo(firstCruve.dx, firstCruve.dy, lastCruve.dx, lastCruve.dy);

   final secondfirstCruve = Offset(0, size.height - 20);
   final  secondlastCruve = Offset(size.width-30, size.height - 20);
   path.quadraticBezierTo(secondfirstCruve.dx, secondfirstCruve.dy, secondlastCruve.dx, secondlastCruve.dy);

   final thirdfirstCruve = Offset(size.width, size.height - 20);
   final thirdlastCruve = Offset(size.width, size.height);
   path.quadraticBezierTo(thirdfirstCruve.dx, thirdfirstCruve.dy, thirdlastCruve.dx, thirdlastCruve.dy);
   
   path.lineTo(size.width, 0);
   path.close();
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}
