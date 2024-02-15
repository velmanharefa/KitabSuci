import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class accountPage extends StatefulWidget {
  const accountPage({super.key});

  @override
  State<accountPage> createState() => _accountPageState();
}

class _accountPageState extends State<accountPage> {
void _notification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter:BluePainter(),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),

            Container(
              width: 500,
              alignment: Alignment.center,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  InkWell(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Profile',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ],
              ),
            ),
            ],
            )
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
    paint.color = Colors.white;
    canvas.drawPath(mainBackground, paint);

  Path ovalPath = Path();
    //Start paint from 20% height to the left
    ovalPath.moveTo(0, 0);

    //paint a curve from current position to middle of the screen
    ovalPath.quadraticBezierTo(
        0, height*0.2, 0,height*0.15);
    ovalPath.quadraticBezierTo(
        width, height*0.2, width,height*0.15);

    ovalPath.lineTo(width,0);

    ovalPath.close();

    paint.color = Color(0xFF64FCD9);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}