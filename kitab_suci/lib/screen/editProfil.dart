import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/editProfil.dart';
import 'package:kitab_suci/screen/homePage.dart';

class editProfil extends StatefulWidget {
  const editProfil({super.key});

  @override
  State<editProfil> createState() => _editProfilState();
}

class _editProfilState extends State<editProfil> {
  bool _secureText = true;
  TextEditingController _editController = TextEditingController();

  void _ubahAcount() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const homePage()));
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

        children: [
          SizedBox(height: 220),

          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ],
            ),
          ),  

          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black,
            //     width: 2,
            //   )
            // ),
            width: 320,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Werky Sihotang",
                      errorText: null,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      // border: InputBorder.none,
                      // fillColor: Colors.grey,
                      // filled: true,
                    ),
                  ),

                  TextField(
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "Werky",
                      errorText: null,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      // border: InputBorder.none,
                      // fillColor: Colors.grey,
                      // filled: true,
                    ),
                  ),

                  TextField(
                    controller: _editController,
                    decoration: InputDecoration(
                      hintText: "Enter email",
                      labelText: "werkysonjesus@gmail.com",
                      errorText: null,
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      // border: InputBorder.none,
                      // fillColor: Colors.grey,
                      // filled: true,
                    ),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Enter new password",
                      // border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF4DACB2),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_secureText ? Icons.remove_red_eye : Icons.visibility_off),
                        onPressed: (){
                          setState(() {
                            _secureText = !_secureText;
                          });
                        },
                      ),
                    ),
                    // keyboardType: TextInputType.emailAddress,
                    obscureText: _secureText,
                    maxLength: 10,
                  ),

                SizedBox(height: 10),
                
                Container(
                  margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        onPressed: _ubahAcount,
                        style: ElevatedButton.styleFrom(
                          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                          backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: const Size(217, 51),
                        ),
                        child: const Text(
                          'Change Account',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                ),

                ],
              )
            ),
          ),
          
        ],
        )
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