import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class favoritePage extends StatefulWidget {
  const favoritePage({super.key});

  @override
  State<favoritePage> createState() => _favoritePageState();
}



class _favoritePageState extends State<favoritePage> {
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
            children:<Widget> [
              SizedBox(height: 50),
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
                children: [
                  
                  InkWell(
                    child: Text(
                      textAlign: TextAlign.center,
                      'Favorite',
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
            SizedBox(height: 15),
            Container(
              width: 500,
              child: Text(
                textAlign: TextAlign.center,
                'Werky Sihotang',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 1),
            Container(
              width: 500,
              child: Text(
                textAlign: TextAlign.center,
                'werkySihotang@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff7D7D7D)
                ),
              ),
            ),

            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  InkWell(
                    child: const Text(
                      'Account',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // onTap: (){
                    //   Navigator.push(
                    //     context, 
                    //     MaterialPageRoute(
                    //       builder: (context) => const loginPage()));
                    // },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 15, 0, 0),
              width: 500,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _notification,
                    child: Container(
                      width: 40, 
                      height: 40, 
                      decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        // color: Colors.grey[200], 
                      ),
                      child: Icon(Icons.edit_outlined, color: Colors.black),
                    ),
                  ), 
                  InkWell(
                    child:Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const loginPage()));
                    },
                  )
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
              width: 500,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _notification,
                    child: Container(
                      width: 40, 
                      height: 40, 
                      decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        // color: Colors.grey[200], 
                      ),
                      child: Icon(Icons.favorite_border, color: Colors.black),
                    ),
                  ), 
                  InkWell(
                    child:Text(
                      "Favorites",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const loginPage()));
                    },
                  )
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
              width: 500,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _notification,
                    child: Container(
                      width: 40, 
                      height: 40, 
                      decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        // color: Colors.grey[200], 
                      ),
                      child: Icon(Icons.info_outline, color: Colors.black),
                    ),
                  ), 
                  InkWell(
                    child:Text(
                      "About Us",
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const loginPage()));
                    },
                  )
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 5, 0, 0),
              width: 500,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _notification,
                    child: Container(
                      width: 40, 
                      height: 40, 
                      decoration: BoxDecoration(
                        color: Color(0xFFffffff),
                        // color: Colors.grey[200], 
                      ),
                      child: Icon(Icons.logout_rounded, color: Color(0xFFF44336)),
                    ),
                  ), 
                  InkWell(
                    child:Text(
                      "Logout",
                      style: TextStyle(
                        color: Color(0xFFF44336),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => const loginPage()));
                    },
                  )
                ]
              ),
            ),
            ],
          ),
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