import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/mapping_collection.dart';
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
