import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/homePage.dart';
import 'package:kitab_suci/screen/intropage2.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  void _next() {
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
            width: 336,
            // decoration: BoxDecoration(
            //   border: Border.all(
            //     color: Colors.black, // Warna outline
            //     width: 2, // Ketebalan outline
            //   ),
            // ),
            alignment: Alignment.centerRight,
            // padding:EdgeInsets.all(15),
            // margin: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.circle,
                  color: Colors.transparent,
                  size: 45,
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
            height: 100,
          ),

          Container(
            alignment: Alignment.center,
            width: 380,
            // height: 130,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/gambarIntro.png",
                ),

                SizedBox(height: 40,),

                Text(
                  "Complete Scripture",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4DACB2),                
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  "We provide all the holy books in Indonesia, where all religious congregations in Indonesia can search for holy books according to their needs",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFABABAB),                
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(height: 10),

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

          
        ],
      )
    );
  }
}