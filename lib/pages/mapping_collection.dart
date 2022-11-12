import 'dart:math';
import 'package:flutter/material.dart';

import '../widgets/kotak_warna.dart';

class LearnMapping extends StatelessWidget {
  List<Map<String, dynamic>> data = List.generate(
    20,
    (index) => {
      'teks': 'This is No. ${index + 1}',
      'color': Color.fromARGB(
        255,
        140 + Random().nextInt(256),
        140 + Random().nextInt(256),
        140 + Random().nextInt(256),
      ),
    },
  );

  List<KotakWarna> kotakWarnain = List.generate(
    20,
    (index) => KotakWarna(
      text: 'This is No. ${index + 1}',
      warna: Color.fromARGB(
        255,
        140 + Random().nextInt(256),
        140 + Random().nextInt(256),
        140 + Random().nextInt(256),
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
          children: //kotakWarna
              data
                  .map(
                    (e) => KotakWarna(
                      text: e['teks'],
                      warna: e['color'],
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
