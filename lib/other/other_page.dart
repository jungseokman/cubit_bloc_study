import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OtherPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OtherPage is working',
          style: TextStyle(fontSize: 52),
        ),
      ),
    );
  }
}
