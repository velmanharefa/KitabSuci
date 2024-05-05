import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/case0.dart';
import 'package:kitab_suci/screen/case1.dart';
import 'package:kitab_suci/screen/case2.dart';
import 'package:kitab_suci/screen/case3.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  void _notification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }
  
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          CustomPaint(size: Size(5000, 700),painter:BluePainter(),),
          _buildBody(),
          Align(
            alignment: Alignment.bottomCenter,
            child: CurvedNavigationBar(
              height: 55,
              backgroundColor: Colors.white,
              color: Color(0xFF4DACB2),
              animationDuration: Duration(milliseconds: 300),
              index: _currentIndex,
              onTap: (int newIndex) {
                setState(() {
                  _currentIndex = newIndex;
                });
              },
              // items: [
              //   Icon(Icons.home, size: 30),
              //   Icon(Icons.menu, size: 30),
              //   Icon(Icons.person, size: 30),
              // ],
              items: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.book_outlined, 
                  color: Colors.white,
                ),
                Icon(
                  Icons.signal_cellular_alt_outlined, 
                  color: Colors.white,
                ),
                Icon(
                  Icons.person, 
                  color: Colors.white,
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return Center(
          child: case0(),
        );
      case 1:
        return Center(
          child: Case1(),
        );
      case 2:
        return Center(
          child: case2(),
        );
      case 3:
        return Center(
          child: case3(),
        );
      default:
        return Container(); // Return an empty container for unexpected index
    }
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
    ovalPath.moveTo(0, 0);

    ovalPath.quadraticBezierTo(
        0, height*0.3, 0,height*0.25);
    ovalPath.quadraticBezierTo(
        width, height*0.2, width,height*0.25);

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