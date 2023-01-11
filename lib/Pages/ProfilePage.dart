import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final text1;
  ProfilePage({this.text1});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 34, 130, 77),
      body: SafeArea(
        child: Column(
          children: [
            Text(text1),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('back'),
            )
          ],
        ),
      ),
    );
  }
}
