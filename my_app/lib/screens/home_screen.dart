import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  //Variable, properties

  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle(fontSize: 30);
    const fontSize20 = TextStyle(fontSize: 20);
    int counter = 10;
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter', style: fontSize30), 
            Text("$counter", style: fontSize20,)],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter ++;
          print("Counter $counter");
        },
        backgroundColor: const Color.fromARGB(255, 109, 129, 196),
        child: const Icon(Icons.add),
      ),
    );
  }
}