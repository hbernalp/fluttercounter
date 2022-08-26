import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;

  //Metodo para el boton de incremento
  void increase() {
    counter++;
    setState(() {});
  }

  //Metodo  para el boton de decremento
  void decrease() {
    counter--;
    setState(() {});
  }

  //Metodo  para el boton de reset
  void resetment() {
    counter = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingAction(
        increaseFn: increase,
        decreaseFn: decrease,
        resetmentFn: resetment,
        ),
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetmentFn;

  const CustomFloatingAction({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetmentFn,
  }) : super(key: key);

  



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        //Botton de incremento
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => increaseFn(),
        ),

        //Botton de reset
        FloatingActionButton(
          child: const Icon(Icons.all_inclusive),
          onPressed: () => resetmentFn(),
        ),

        //Botton de Decremento
        FloatingActionButton(
          child: const Icon(Icons.horizontal_rule),
          onPressed: () => decreaseFn(),
        ),
      ],
    );
  }
}
