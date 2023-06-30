import 'package:flutter/material.dart';

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = Path();
    path.lineTo(0, size.height - 185);
    // var firstStart = Offset(size.width / 12, size.height - 185);
    var firstStart = Offset(size.width / 11, size.height - 170);
    var firstEnd = Offset(size.width / 6, size.height - 135);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - 195, size.height - 175);
    var secondEnd =  Offset(size.width - 170, size.height - 195);
    path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // path.lineTo(size.width - 70, 0);

    var thirdStart = Offset(size.width - 110, size.height - 250);
    var thirdEnd =  Offset(size.width - 85, 0);
    path.quadraticBezierTo(thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy,);
    // path.lineTo(size.width - 70, 0);
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
    // path.moveTo(0, size.height);  // Start from the bottom-left corner

    // var controlPoint = Offset(size.width * 0.3, size.height * 0.7);  // Adjust control point to avoid top points
    // var endPoint = Offset(size.width * 0.5, size.height * 0.5);  // Adjust end point to avoid top points

    // path.quadraticBezierTo(
    //   controlPoint.dx,
    //   controlPoint.dy,
    //   endPoint.dx,
    //   endPoint.dy,
    // );

    // path.lineTo(size.width, size.height);  // Connect to the bottom-right corner
    // path.lineTo(size.width, 0);  // Connect to the top-right corner
    // path.lineTo(0, 0);  // Connect back to the top-left corner
    // path.close();

    // var clipPath = Path();
    // clipPath.addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    // clipPath = Path.combine(PathOperation.difference, clipPath, path);





    path.lineTo(0, size.height);
    var firstStart = Offset(size.width - 250 , size.height - 50);
    var firstEnd = Offset(size.width - 250, size.height - 50);
    path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    // var secondStart = Offset(size.width - 195, size.height - 175);
    // var secondEnd =  Offset(size.width - 170, size.height - 195);
    // path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy,);
    // // path.lineTo(size.width - 70, 0);

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

        
        

class QuadraticBezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0.0024272, size.height * 0.9237668);
    path.lineTo(size.width * 0.0703883, size.height * 0.8419283);
    path.lineTo(size.width * 0.1699029, size.height * 0.779148);
    path.lineTo(size.width * 0.3033981, size.height * 0.7141256);
    path.lineTo(size.width * 0.4417476, size.height * 0.6591928);
    path.lineTo(size.width * 0.5315534, size.height * 0.617713);
    path.lineTo(size.width * 0.5995146, size.height * 0.5661435);
    path.lineTo(size.width * 0.6771845, size.height * 0.6154709);
    path.lineTo(size.width * 0.788835, size.height * 0.6603139);
    path.lineTo(size.width * 0.9247573, size.height * 0.7163677);
    path.lineTo(size.width * 0.9975728, size.height * 0.7612108);
    path.lineTo(size.width * 0.9975728, size.height * 0.9943946);
    path.lineTo(size.width * 0.1140777, size.height * 0.9955157);
    path.lineTo(size.width * 0.1626214, size.height * 0.92713);
    path.lineTo(size.width * 0.2208738, size.height * 0.8710762);
    path.lineTo(size.width * 0.2864078, size.height * 0.8195067);
    path.lineTo(size.width * 0.3907767, size.height * 0.7634529);
    path.lineTo(size.width * 0.5097087, size.height * 0.7141256);
    path.lineTo(size.width * 0.618932, size.height * 0.6715247);
    path.lineTo(size.width * 0.7305825, size.height * 0.6356502);
    path.lineTo(size.width * 0.8082524, size.height * 0.6008969);
    path.lineTo(size.width * 0.842233, size.height * 0.5639013);
    path.lineTo(size.width * 0.9199029, size.height * 0.6132287);
    path.lineTo(size.width * 0.9466019, size.height * 0.6401345);
    path.lineTo(size.width * 0.9781553, size.height * 0.6647982);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}