import 'package:flutter/material.dart';

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
     path.lineTo(0, size.height / 3);
    var firstStart = Offset(size.width / 11, size.height / 2.4);
    var firstEnd = Offset(size.width / 6, size.height / 1.9);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width / 4.4, size.height / 2.5);
    var secondEnd =  Offset(size.width / 2.4, size.height / 3.5);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // path.lineTo(size.width - 70, 0);

    var thirdStart = Offset(size.width / 1.6, size.height / 5.7);
    var thirdEnd =  Offset(size.width / 1.5, 0);
    path.quadraticBezierTo(thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy,);
    // path.lineTo(size.width - 70, 0);
    // path.lineTo(0, size.height - 185);
    // // var firstStart = Offset(size.width / 12, size.height - 185);
    // var firstStart = Offset(size.width / 11, size.height - 170);
    // var firstEnd = Offset(size.width / 6, size.height - 135);
    // path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // var secondStart = Offset(size.width - 195, size.height - 175);
    // var secondEnd =  Offset(size.width - 170, size.height - 195);
    // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // // path.lineTo(size.width - 70, 0);

    // var thirdStart = Offset(size.width - 110, size.height - 250);
    // var thirdEnd =  Offset(size.width - 85, 0);
    // path.quadraticBezierTo(thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy,);
    // // path.lineTo(size.width - 70, 0);
    path.close();
    return path;
      }
      
        @override
        bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
          throw UnimplementedError();
        }}

class BottomLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width - 250 , size.height - 50);
    var firstEnd = Offset(size.width - 250, size.height - 50);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - 195, size.height - 175);
    var secondEnd =  Offset(size.width - 170, size.height - 195);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // path.lineTo(size.width - 70, 0);

    // var thirdStart = Offset(size.width - 110, size.height - 250);
    // var thirdEnd =  Offset(size.width - 85, 0);
    // path.quadraticBezierTo(thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy,);
    // path.lineTo(size.width - 70, 0);
    path.close();
    return path;
      }
      
        @override
        bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
          throw UnimplementedError();
        }}


class BottomRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(size.width - 0.1, size.height);
    var firstStart = Offset(size.width - 150 , size.height);
    var firstEnd = Offset(size.width - 50, size.height - 50);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // var secondStart = Offset(size.width, size.height - 150);
    // var secondEnd =  Offset(size.width - 25, size.height - 50);
    // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // path.lineTo(size.width - 70, 0);

    // var thirdStart = Offset(size.width - 110, size.height - 250);
    // var thirdEnd =  Offset(size.width - 85, 0);
    // path.quadraticBezierTo(thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy,);
    // path.lineTo(size.width - 70, 0);
    path.close();
    return path;
      }
      
        @override
        bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
          throw UnimplementedError();
        }}


