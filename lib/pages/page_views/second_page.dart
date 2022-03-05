import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.red),
      child: const Center(
        child: Text(
      'Second Page',
      style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
