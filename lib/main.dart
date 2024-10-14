import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_flip_card/widgets/back_flip_card.dart';
import 'package:flutter_flip_card/widgets/front_flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flip Card Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardColor: Colors.white,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const FlipCardDemo(),
    );
  }
}

class FlipCardDemo extends StatefulWidget {
  const FlipCardDemo({super.key});

  @override
  State<FlipCardDemo> createState() => _FlipCardDemoState();
}

class _FlipCardDemoState extends State<FlipCardDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.repeat(
      reverse: true,
      period: const Duration(seconds: 3),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double angle = _controller.value * 2 * pi; // 360 grados
            bool isFront = angle <= pi;

            return Transform(
              transform: Matrix4.rotationY(_controller.value * pi),
              alignment: Alignment.center,
              child: isFront
                  ? const FrontFlipCard()
                  : Transform(
                      transform: Matrix4.rotationY(pi),
                      alignment: Alignment.center,
                      child: const BackFlipCard(),
                    ),
            );
          },
        ),
      ),
    );
  }
}
