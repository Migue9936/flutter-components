import 'package:flutter/material.dart';

import 'dart:math';

class AnimetedScreen extends StatefulWidget {
  const AnimetedScreen({Key? key}) : super(key: key);

  @override
  State<AnimetedScreen> createState() => _AnimetedScreenState();
}

class _AnimetedScreenState extends State<AnimetedScreen> {
  final random = Random();
  double _with = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(20);

  void changeShape() {
    setState(() {
      _with = random.nextInt(300).toDouble() + 70;
      _height =random.nextInt(300).toDouble() + 70;
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
      _borderRadiusGeometry = BorderRadius.circular(random.nextInt(300).toDouble() + 70);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animeted Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceIn,
          width: _with,
          height: _height,
          decoration:
              BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline_outlined,
          size: 40,
        ),
        onPressed: () => changeShape(),
      ),
    );
  }
}
