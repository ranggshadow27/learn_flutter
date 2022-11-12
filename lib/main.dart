import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LearnMapping(),
    );
  }
}

class LearnMapping extends StatelessWidget {
  const LearnMapping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Learn Mapping"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Color.fromARGB(
            255,
            200 + Random().nextInt(256),
            200 + Random().nextInt(256),
            200 + Random().nextInt(256),
          ),
          child: Center(
            child: Text(
              'Column Number ${index + 1}',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
