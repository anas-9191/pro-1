import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: FacebookDark(),
  ));
}
class FacebookDark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Facebook Dark',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}