import 'package:flutter/material.dart';
import 'package:my_app_kuriev/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(
          Color.fromARGB(107, 34, 32, 32),
          Color.fromARGB(147, 255, 255, 255),
          Color.fromARGB(107, 255, 255, 255),
        ),
      )),
    ),
  );
}