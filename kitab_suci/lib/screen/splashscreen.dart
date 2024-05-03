import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/introPage.dart';


class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const introPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 48, // Ukuran font yang lebih besar
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Kitab',
                style: TextStyle(
                  color: Color(0xFF4DACB2), // Warna untuk "Kitab"
                ),
              ),
              TextSpan(
                text: 'Suci',
                style: TextStyle(
                  color: Colors.black, // Warna untuk "Suci"
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
