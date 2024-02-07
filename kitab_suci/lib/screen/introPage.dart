import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/intropage3.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  void _next() {
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
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 16),
            child: Text(
              "Skip",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),

          SizedBox(
            height: 100,
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
                  "assets/images/gambarIntro.png",
                ),

                SizedBox(height: 10,),

                Text(
                  "Complete Scripture",
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFF4DACB2),                
                  ),
                ),

                SizedBox(height: 2),
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