import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: const Center(
        child: Text('My Cart'),
      ),
    );
  }
}
