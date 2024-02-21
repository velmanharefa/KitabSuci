import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/editProfil.dart';

class accountSetting extends StatefulWidget {
  const accountSetting({super.key});

  @override
  State<accountSetting> createState() => _accountSettingState();
}

class _accountSettingState extends State<accountSetting> {
  void _notification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
      painter:BluePainter(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),

            Container(
              width: 500,
              height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  InkWell(
                    child: Text(
                      'Profil',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 500,
              // height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  InkWell(
                    child: Text(
                      'Werky Sihotang',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff000000)
                    ),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              width: 500,
              // height: 40,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  InkWell(
                    child: Text(
                      'werkysonjesus@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFFFFF)
                    ),
                    ),
                  ),
                ],
              ),
            ),
            
            

            SizedBox(height: 55),

            Container(
              padding: EdgeInsets.all(7.0),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  InkWell(
                    child: const Text(
                      'Account',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
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
            
            SizedBox(height: 15),

            Container(
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),

                  SizedBox(width: 10),

                  InkWell(
                    child: const Text(
                      'Edit Profil',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
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

            SizedBox(height: 15),

            Container(
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),

                  SizedBox(width: 10),

                  InkWell(
                    child: const Text(
                      'Favorit',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
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

            SizedBox(height: 15),

            Container(
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.black,
                  ),

                  SizedBox(width: 10),

                  InkWell(
                    child: const Text(
                      'About Us',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
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

            SizedBox(height: 15),

            Container(
              width: 300,
              child: Row(
                children: [
                  Icon(
                    Icons.logout_rounded,
                    color: Color(0xffFF151A),
                  ),

                  SizedBox(width: 10),

                  InkWell(
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xffFF151A),
                        fontSize: 16,
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
            )
            



          ],
        ),
      ),
      ),


      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
        backgroundColor: Colors.white,
        color: Color(0xFF4DACB2),
        animationDuration: Duration(milliseconds: 300),
        // onTap: (index){
        //   print(index);
        // },
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
      ]),
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
    // ovalPath.quadraticBezierTo(
    //     0, height*0.2, 0,height*0.15);
    // ovalPath.quadraticBezierTo(
    //     width, height*0.2, width,height*0.15);
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