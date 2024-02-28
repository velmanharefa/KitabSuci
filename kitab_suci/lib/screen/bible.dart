import 'package:flutter/material.dart';

class bible extends StatefulWidget {
  const bible({super.key});

  @override
  State<bible> createState() => _bibleState();
}

class _bibleState extends State<bible> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'loginPage',
          style:TextStyle(fontSize:32),
          )
        ),
    );
  }
}