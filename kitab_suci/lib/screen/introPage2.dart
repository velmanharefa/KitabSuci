import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/homePage.dart';
import 'package:kitab_suci/screen/introPage.dart';
import 'package:kitab_suci/screen/introPage3.dart';

class introPage2 extends StatefulWidget {
  const introPage2({super.key});

  @override
  State<introPage2> createState() => _introPage2State();
}

class _introPage2State extends State<introPage2> {
  void _next() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const introPage3()));
  }
  void _back() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const introPage()));
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
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black, // Warna outline
            //     width: 2, // Ketebalan outline
            //   ),
            // ),
            alignment: Alignment.centerRight,
            // margin: EdgeInsets.only(right: 20, left: 20),
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
              height: 50,
            ),

            Container(
              child: Image.asset(
                alignment: Alignment.center,
                "assets/images/laki.png",
              ),
            ),

            SizedBox(
              height: 11,
            ),

          Container(
            alignment: Alignment.center,
            width: 380,//kiri kanan
            height: 130,//atas bawah
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Akses Bebas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4DACB2),
                ),
              ),
              SizedBox(height: 19),
              Text(
                'Kami menyediakan kitab yang dapat di akses dimanapun kalian berada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFABABAB),
                ),
              ),
            ],
          ),
          ),

          SizedBox(
              height: 12,
            ),

          Container(
            margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: _next,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color(0xff4DACB2), // Ubah warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size(217, 51),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
          ),
        ] 
    )
    );
  }
}