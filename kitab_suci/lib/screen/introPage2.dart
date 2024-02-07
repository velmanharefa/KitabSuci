import 'package:flutter/material.dart';

class introPage2 extends StatefulWidget {
  const introPage2({super.key});

  @override
  State<introPage2> createState() => _introPage2State();
}

class _introPage2State extends State<introPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Color(0xFF4DACB2),
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inter',
                    
                    ),
                )
              ],
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Container(
              decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Warna outline
                width: 2, // Ketebalan outline
              ),
            ),
              child: Image.asset(
                alignment: Alignment.center,
                "assets/images/laki.png",
              ),
            ),

            SizedBox(
              height: 10,
            ),

          Container(
            alignment: Alignment.center,
            width: 380,//kiri kanan
            height: 130,//atas bawah
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 255, 1, 1),
                width: 2,
              ),
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Complete Scripture',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4DACB2),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Kami menyediakan kitab yang dapat di akses dimanapun kalian berada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFABABAB),
                ),
              ),
            ],
          ),
          ),

          SizedBox(
              height: 10,
            ),

          Container(
            child: ElevatedButton(
              onPressed: (){
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Color(0xFF4DACB2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(217, 52),
                ),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Color(0xFFffffff) 
                ),
              ),
              ),
            ),
              
                
            
            


        ] 
    )
    );
  }
}