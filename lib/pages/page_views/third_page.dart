import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.pink),
      child: Container(
          child: Center(
        child: Text(
          'Third Page',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      )),
    );
  }
}
