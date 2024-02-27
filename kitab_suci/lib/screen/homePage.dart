import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/editProfil.dart';
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
          child: Container(

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
              
              Container(
                width: 500,
                height: 25,
                // decoration: BoxDecoration(
                //   border: Border.all(
                //     color: Colors.black,
                //     width: 2,
                //   )
                // ),
                child: Text(
                  'let’s read some word of God',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff000000)
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


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 85,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'All',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 115,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Alkitab',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 125,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Al-Quran',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 105,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Weda',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 125,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Tripitaka',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: 165,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF4DACB2),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.menu_book_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Shishu Wujing',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    

                  ],
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
                      MaterialPageRoute(builder: (context) => editProfil()),
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
              ],
            ),
          ),
        ),
      );
      case 1:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Menu Content'),
              // Add your additional content here
              // For example, you can add more Text widgets, images, etc.
            ],
          ),
        );
      case 2:
        return Center(
          child: Text('Home Content'),
        );
      case 3:
        return Center(
          child: Container(
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
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => const editProfil()));
                          },
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