import 'package:flutter/material.dart';

// El guion bajo significa que es un Widget privado
class _PrivateTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({ super.key });

  static const generalFontSize = TextStyle(fontSize: 24);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int counter = 0;
  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text('Counter', style: TextStyle(color: Colors.black),),
        )
      ),
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Hola, bienvenido!', style: TextStyle( fontSize: 30 )),
              const SizedBox( height: 20 ),
              const Text('Cantidad de clicks:', style: WelcomeScreen.generalFontSize),
              Text('$counter', style: WelcomeScreen.generalFontSize),
            ],
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomActionsButtons(
        increaseCounter: increase,
        decreaseCounter: decrease,
        resetCounter: reset,
      )
    );
  }
}

class CustomActionsButtons extends StatelessWidget {
  final Function increaseCounter;
  final Function decreaseCounter;
  final Function resetCounter;

  const CustomActionsButtons({
    super.key,
    required this.increaseCounter,
    required this.decreaseCounter,
    required this.resetCounter,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: const Icon(Icons.plus_one, color: Colors.black),
            onPressed: () => increaseCounter(),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: const Icon(Icons.exposure_minus_1, color: Colors.black),
            onPressed: () => decreaseCounter(),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: const Icon(Icons.restart_alt, color: Colors.black),
            onPressed: () => resetCounter(),
          ),
        ],
      );
  }
}