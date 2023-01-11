import 'package:Application_4/Pages/ProfilePage.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  // const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        GestureDetector(
          // child: Text('Hi')
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage(
                text1: 'sagarmatha',
              );
            }));
          },

          child: CustomContainer(
            text: 'H1',
            customColor: Colors.red,
          ),
        ),
        CustomContainer(
          text: 'H2',
          customColor: Colors.white,
        ),
        CustomContainer(
          text: 'H3',
          customColor: Colors.blue,
        ),
        CustomContainer(
          text: 'H4',
          customColor: Colors.yellow,
        ),
      ]),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final text;
  final customColor;
  CustomContainer({this.customColor, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(16),
      height: 100,
      color: customColor,
      child: Column(
        children: [
          Text(
            text,
          ),
        ],
      ),
    );
  }
}