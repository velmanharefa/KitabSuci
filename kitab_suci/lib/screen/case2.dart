import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';


class case2 extends StatefulWidget {
  const case2({super.key});

  @override
  State<case2> createState() => case2State();
}

class case2State extends State<case2> {
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
              'let’s continue read',
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
            child: Row(
              children: [
                Text(
                  'Recent Reads',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                )
              ],
            ),
          ),
          
          SizedBox(height: 5),
        
          Container(
            height: 160,
            alignment: Alignment.center,
            // padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            
            child: InkWell(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => loginPage()),
              //   );
              // },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 50),
                      Image.asset(
                        'assets/images/alkitab.png',
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  'Bible',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 50),

                                CloseButton(
                                  color: Colors.grey,
                                  // onPressed: (){
                                  //   debugPrint("Do Something");
                                  // },
                                )

                                // IconButton(
                                //   onPressed: () {
                                //     // Tambahkan logika untuk menangani penutupan di sini
                                //   },
                                //   icon: Icon(Icons.close),
                                //   color: Color(0xff8A8A8A),
                                // ),
                              ],
                            ),
                            Text(
                              'Yohanes 18',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff8A8A8A),
                              ),
                            ),
                            Text(
                              'Yesterday 18.00 PM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff1E1E1E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(
                          color: Color(0xff33D8D8),
                          width: 1,
                        ),
                        color: Color(0xff33D8D8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book_outlined,
                            color: Color(0xffFFFFFF),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Continue",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffFFFFFF),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}