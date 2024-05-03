import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';

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
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
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
                          fontWeight: FontWeight.w900,
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
            
                SizedBox(height: 20),
                Container(
                    alignment: Alignment.center,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                        // fillColor: Colors.black,
                        border: InputBorder.none,
                        // border: const OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(14),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  // favorite container
                  Container(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alkitab',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                              Icon(Icons.favorite, color: Color(0xFFFF0000), size: 30,),
                            ]
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => loginPage()),
                      //   );
                      // },
                      child: Container(
                        alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Alkitab',
                              //     style: TextStyle(
                              //       color: Color(0xFF000000),
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              // ),
                              // Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                              Text(
                                'Lukas 1 : 2',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                'Aku berkata kepadamu : Demikian juga akan ada sukacita di sorga karena satu ',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                              ),
                              GestureDetector(
                                onTap: _notification,
                                child: Container(
                                  width: 15, 
                                  height: 15, 
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFD9D9D9),
                                    // color: Colors.grey[200], 
                                  ),
                                  child: Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                                ),
                              ),  
                            ],
                          ),
                          
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // favorite container
                  Container(
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Alkitab',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                              Icon(Icons.favorite, color: Color(0xFFFF0000), size: 30,),
                            ]
                      ),
                    ),
                  ),
                  Container(
                    child: InkWell(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => loginPage()),
                      //   );
                      // },
                      child: Container(
                        alignment: Alignment.topLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Text(
                              //   'Alkitab',
                              //     style: TextStyle(
                              //       color: Color(0xFF000000),
                              //       fontSize: 20,
                              //       fontWeight: FontWeight.w600,
                              //     ),
                              // ),
                              // Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                              Text(
                                'Lukas 1 : 2',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                'Aku berkata kepadamu : Demikian juga akan ada sukacita di sorga karena satu ',
                                  style: TextStyle(
                                    color: Color(0xFF8A8A8A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                              ),
                              GestureDetector(
                                onTap: _notification,
                                child: Container(
                                  width: 15, 
                                  height: 15, 
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFD9D9D9),
                                    // color: Colors.grey[200], 
                                  ),
                                  child: Icon(Icons.more_horiz, color: Colors.black, size: 15,),
                                ),
                              ),  
                            ],
                          ),
                          
                      ),
                    ),
                  ),
                SizedBox(height: 10),
                ],
              ),
            ),
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