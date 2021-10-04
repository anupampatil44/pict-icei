import 'package:flutter/material.dart';

class Program extends StatelessWidget {
  const Program({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Program",
          style: TextStyle(
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Details Coming Soon",
            style: TextStyle(
              fontFamily: 'Raleway',
            ),
          ),
        ),
      ),
    );
  }
}
