import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/screens/welcome/welcome.dart';

void main() {
  runApp( const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen()
    );
  }
}