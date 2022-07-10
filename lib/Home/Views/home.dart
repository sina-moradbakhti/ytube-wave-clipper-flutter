import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[50],
            height: 210,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[200],
            height: 220,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[300],
            height: 200,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[400],
            height: 180,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[500],
            height: 160,
          ),
        ),
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            color: Colors.orange[600],
            height: 130,
          ),
        )
      ],
    ));
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5, size.height);
    var firstEnd = Offset(size.width / 2.25, size.height - 50);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    var secondEnd = Offset(size.width, size.height - 10);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
