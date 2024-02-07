import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/loginPage.dart';

class introPage3 extends StatefulWidget {
  const introPage3({super.key});

  @override
  State<introPage3> createState() => _introPage3State();
}

class _introPage3State extends State<introPage3> {
  void _start() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => const introPage3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
      
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 16),
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            alignment: Alignment.center,
            // width: 380,
            // height: 250,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFABABAB),
                width: 2,
              )
            ),
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
                            builder: (context) => const loginPage()));
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