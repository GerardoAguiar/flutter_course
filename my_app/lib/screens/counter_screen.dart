import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //Variable, properties
  int counter = 10;

  void increase(){
    counter ++;
    setState(() {});
  }

  void decrease(){
    counter --;
    setState(() {});
  }

  void reset(){
    counter = 0;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle(fontSize: 30);
    const fontSize20 = TextStyle(fontSize: 20);
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter Screen'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GroupActionButton(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class GroupActionButton extends StatelessWidget {
  
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const GroupActionButton({
    super.key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        FloatingActionButton(
          onPressed: () => increaseFn(),
          backgroundColor: const Color.fromARGB(255, 109, 129, 196),
          child: const Icon(Icons.exposure_plus_1),   
        ),
        
        FloatingActionButton(
          onPressed: () => resetFn(),
          backgroundColor: const Color.fromARGB(255, 109, 129, 196),
          child: const Icon(Icons.exposure_sharp),   
        ),

        FloatingActionButton(
          onPressed: () => decreaseFn(),
          backgroundColor: const Color.fromARGB(255, 109, 129, 196),
         child: const Icon(Icons.exposure_minus_1_sharp),   
        ),
      ],
    );
  }
}