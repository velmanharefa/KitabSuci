import 'package:flutter/material.dart';

class BackArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Back Arrow Button Example'),
      ),
      body: Center(
        child: BackArrowButton(),
      ),
    ),
  ));
}
