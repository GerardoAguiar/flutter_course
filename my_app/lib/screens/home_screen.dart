import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
        elevation: 0,
      ),
      body: const Center(
              child: Text('Home Screen'),
            ),
    );
  }
}