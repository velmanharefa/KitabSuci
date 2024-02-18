import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/homePage.dart';
import 'package:kitab_suci/screen/introPage2.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/signUpPage.dart';



class introPage3 extends StatefulWidget {
  const introPage3({super.key});

  @override
  State<introPage3> createState() => _introPage3State();
}

class _introPage3State extends State<introPage3> {
  void _start() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const homePage()));
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
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black, // Warna outline
            //     width: 2, // Ketebalan outline
            //   ),
            // ),
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _back,
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
                        builder: (context) => const homePage()));
                } ,
                ),
                
              ],
              ),
            ),

          SizedBox(
            height: 10,
          ),

          Container(
            alignment: Alignment.center,
            // width: 380,
            // height: 250,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/intro3.png",
                ),

                // SizedBox(height: 10,),

                Text(
                  "Selamat Membaca",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF4DACB2),                
                  ),
                ),

                SizedBox(height: 2),
                Text(
                  "“Lebih baik kehilangan sesuatu demi Tuhan. Daripada kehilangan Tuhan demi sesuatu”",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFABABAB),                
                  ),
                ),

                SizedBox(height: 25),
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

          Container(
            // alignment: Alignment.center,
            width: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFABABAB),
                width: 2,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: const Text(
                    'Login',
                    // style: TextStyle(
                    //     fontWeight: FontWeight.w600,
                    //     letterSpacing: 0.5),
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
                ),
                InkWell(
                  child: const Text(
                    'Sign-Up',
                    // style: TextStyle(
                    //     fontWeight: FontWeight.w600,
                    //     letterSpacing: 0.5),
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