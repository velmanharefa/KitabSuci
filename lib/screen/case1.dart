import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/editProfil.dart';


class case1 extends StatefulWidget {
  const case1({super.key});

  @override
  State<case1> createState() => case1State();
}

class case1State extends State<case1> {
  void _notification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const loginPage()));
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
            
              SizedBox(height: 25),
            
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 350,
                        // margin: EdgeInsets.only(right: 10),
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
                  ],
                ),
              ),

              SizedBox(height: 10),
            
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 350,
                        // margin: EdgeInsets.only(right: 10),
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
                              "Al-Qur'an",
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

              SizedBox(height: 10),
            
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 350,
                        // margin: EdgeInsets.only(right: 10),
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
                  ],
                ),
              ),
              
              SizedBox(height: 10),
            
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 350,
                        // margin: EdgeInsets.only(right: 10),
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
                  ],
                ),
              ),

              SizedBox(height: 10),
            
              Container(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => editProfil()),
                        );
                      },
                      child: Container(
                        height: 65,
                        width: 350,
                        // margin: EdgeInsets.only(right: 10),
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

              ],
            ),
          ),
    );
  }
}