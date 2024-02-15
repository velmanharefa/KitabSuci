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
    paint.color = Colors.black;
    canvas.drawPath(mainBackground, paint);

  Path ovalPath = Path();
    //Start paint from 20% height to the left
    ovalPath.moveTo(0, 0);

    //paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        0, height*0.1, 0,height*0.2);
    ovalPath.quadraticBezierTo(
        width, height*0.3, width,0);

    // ovalPath.conicTo(
    //   size.width / 1, 1 * size.height / 2, size.width, 0, 20
    // );


    // ovalPath.relativeCubicTo(size.width / 4, 3 * size.height / 4, 3 * size.width / 4, size.height / 4, size.width, 0);

    // // Paint a curve from current position to bottom left of screen at width * 0.1
    // ovalPath.quadraticBezierTo(width * 0.1, height * 0.8, width * 0.5, height);

    // draw remaining line to bottom left side
    ovalPath.lineTo(width,0);

    // // Close line to reset it back
    ovalPath.close();

    paint.color = Color(0xFF4DACB2);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}