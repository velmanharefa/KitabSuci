import 'package:flutter/material.dart';

class accountPage extends StatefulWidget {
  const accountPage({super.key});

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter:BluePainter(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,)
          )
        ),
    );
  }
}

class BluePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = const Color.fromARGB(255, 255, 255, 255);
    canvas.drawPath(mainBackground, paint);

  Path ovalPath = Path();
    // Start paint from 20% height to the left
    ovalPath.moveTo(height, width);

    //paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        width * 0.5, height * 0.2, width * 0.1, height * 0.5);

    // Paint a curve from current position to bottom left of screen at width * 0.1
    ovalPath.quadraticBezierTo(width * 0.1, height * 0.8, width * 0.5, height);

    // // draw remaining line to bottom left side
    // ovalPath.lineTo(0, height);

    // // Close line to reset it back
    // ovalPath.close();

    paint.color = Color(0xFF4DACB2);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}