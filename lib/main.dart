import 'package:ballshuffling_app/shuffleball.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Shuffling App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ShuffleBall(),
      debugShowCheckedModeBanner: false,
    );
  }
}
