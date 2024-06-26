import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/introPage2.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/homepage.dart';
import 'package:kitab_suci/screen/signUpPage.dart';



class introPage3 extends StatefulWidget {
  const introPage3({super.key});

  @override
  State<introPage3> createState() => _introPage3State();
}

class _introPage3State extends State<introPage3> {
  void _start() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const homepage()));
  }


  void _back() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const introPage2()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
      
          Container(
            width: 360,
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _back,
                  color: Color(0xFF4DACB2),
                  ),
                  SizedBox(
                    width: 230,
                  ),
                InkWell(
                  child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF4DACB2),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    
                    ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const homepage()));
                } ,
                ),
                
              ],
              ),
            ),

          SizedBox(
            height: 30,
          ),

          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/intro3.png",
                ),

                SizedBox(height: 8,),

                Text(
                  "Happy Reading",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4DACB2),                
                  ),
                ),

                SizedBox(height: 15),
                Text(
                  "“It's better to lose something for God's sake. Rather than losing God because of something”",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFABABAB),                
                  ),
                ),

                SizedBox(height: 15),
                Text(
                  "Mufti Menk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFABABAB),                
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: _start,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(217, 51),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
          ),

          SizedBox(height: 3),

          Container(
            // alignment: Alignment.center,
            width: 150,
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Color(0xFFABABAB),
            //     width: 2,
            //   )
            // ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFABABAB),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const loginPage()));
                  },
                ),
                Text(
                  "|",
                  style: TextStyle(
                  color: Color(0xFFABABAB),
                  ),
                ),
                InkWell(
                  child: const Text(
                    'Sign-Up',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFABABAB),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const singUpPage()));
                  },
                ),
              ],
            ),
          )

          
        ],
      )
    );
  }
}