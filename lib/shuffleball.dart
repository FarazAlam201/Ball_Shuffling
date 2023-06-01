import 'package:flutter/material.dart';
import 'dart:math';

class ShuffleBall extends StatefulWidget {
  const ShuffleBall({super.key});
  @override
  State<ShuffleBall> createState() => _ShuffleBallState();
}

class _ShuffleBallState extends State<ShuffleBall> {
  String ballimg = 'assets/images/ball1.png';
  bool buttonpressed = false;
  void ballshuffle() {
    int randomimg = Random().nextInt(5) + 1;
    setState(() {
      ballimg = 'assets/images/ball$randomimg.png';
      buttonpressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/BackgroundImage.png'),
        fit: BoxFit.cover,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Ask Me Anything...',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          buttonpressed
              ? Image.asset(
                  ballimg,
                  height: 200,
                  width: 200,
                )
              : const SizedBox(
                  height: 200,
                  width: 200,
                ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shadowColor: Colors.black,
            ),
            onPressed: ballshuffle,
            child: const Text(
              'Ask',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 0, 255, 191)),
            ),
          ),
        ],
      ),
    ));
  }
}
