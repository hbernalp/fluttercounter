import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 2,
      ),
      // backgroundColor: (Color.fromARGB(255, 52, 68, 162)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de Clics', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              counter++;
              setState(() {
                
              });
            },
          ),

          
          FloatingActionButton(
            child: const Icon(Icons.all_inclusive),
            onPressed: () {
              counter = 0;
              setState(() {
                
              });
            },
          ),

       
          FloatingActionButton(
            child: const Icon(Icons.horizontal_rule),
            onPressed: () {
              counter--;
              setState(() {
                
              });
            },
          ),
        ],
      ),
    );
  }
}
