import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        elevation: 2,
      ),
      // backgroundColor: (Color.fromARGB(255, 52, 68, 162)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Numero de Clics', style: fontSize30),
            Text('4', style: fontSize30),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_outlined),
        onPressed: () {

        },
      ),
    );
  }
}
