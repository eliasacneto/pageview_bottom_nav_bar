import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.green),
      child: const Center(
        child: Text(
      'First Page',
      style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ),
    );
  }
}
