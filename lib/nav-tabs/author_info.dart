import 'package:flutter/material.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Author Info"),
        ),
      ),
    );
  }
}
