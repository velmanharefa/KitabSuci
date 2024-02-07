import 'package:flutter/material.dart';

class introPage extends StatefulWidget {
  const introPage({super.key});

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
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

                SizedBox(height: 8,),

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
          )

          
        ],
      )
    );
  }
}