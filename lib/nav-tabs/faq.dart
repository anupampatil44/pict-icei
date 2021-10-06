import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FAQs",
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
