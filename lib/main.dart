import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/kotak_warna.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LearnMapping(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LearnMapping extends StatelessWidget {
  List<KotakWarna> dataKotak = List.generate(
    20,
    (index) => KotakWarna(
      text: 'Column No. ${index + 1}',
      warna: Color.fromARGB(
        255,
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
        200 + Random().nextInt(256),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Learn Mapping",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: dataKotak,
        ),
      ),
    );
  }
}
