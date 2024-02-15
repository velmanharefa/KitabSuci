import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 2,
              //   )
              // ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  InkWell(
                    child: Text(
                      'Hello, User',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xff000000)
                    ),
                    ),
                  ),

                  GestureDetector(
                    onTap: _notification,
                    child: Container(
                      width: 40, 
                      height: 40, 
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF4DACB2),
                        // color: Colors.grey[200], 
                      ),
                      child: Icon(Icons.notifications_none_rounded, color: Colors.white),
                    ),
                  ),           
                ],
              ),
            ),

            SizedBox(height: 40),

            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: TextFormField(
                
                decoration: InputDecoration(
                  // https://www.youtube.com/watch?v=yumtaMvUnC8&ab_channel=TheTechBrothers
                  hintText: 'Search bible, verses...',
                  border: InputBorder.none,
                  // border: const OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(14),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),

            SizedBox(height: 5),

            Container(
              padding: EdgeInsets.all(7.0),
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
                      'Recent Reads',
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

                  InkWell(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF4DACB2),
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
            
            SizedBox(height: 5),

            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginPage()),
                  );
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sorry you need login',
                      style: TextStyle(
                        color: Color(0xFF4DACB2),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 5),

            Container(
              padding: EdgeInsets.all(7.0),
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
                      'Explore Scripture',
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

                  InkWell(
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        color: Color(0xFF4DACB2),
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

            Container(
              
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border : Border.all(
                  color: Colors.black,
                  width: 1,
                )
              ),
            ),

            SizedBox(height: 5),

            Container(
              padding: EdgeInsets.all(7.0),
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
                      'News',
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


            SizedBox(height: 5),

            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => loginPage()),
                  );
                },
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sorry you need login',
                      style: TextStyle(
                        color: Color(0xFF4DACB2),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ),
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,

              //   children: [
              //     InkWell(
              //       child: const Text(
              //         'Sorry you need login',
              //         style: TextStyle(
              //           color: Color(0xFF4DACB2),
              //           fontSize: 16,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       onTap: (){
              //         Navigator.push(
              //           context, 
              //           MaterialPageRoute(
              //             builder: (context) => const loginPage()));
              //       },
              //     ),
              //   ],
              // ),
            ),



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