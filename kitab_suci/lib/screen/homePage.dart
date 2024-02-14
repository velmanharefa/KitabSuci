import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,), 
          Container(
            alignment: Alignment.center,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2
              )
            ),
            child: Text(
              "Valo"
            ),
          )
        ],
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