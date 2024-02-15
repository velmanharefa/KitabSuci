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
      body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:  10, horizontal: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50),

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

            SizedBox(height: 5),

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