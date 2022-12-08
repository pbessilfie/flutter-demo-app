import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Center(child: Text('Matriculation Pictures')),
      ),
      body: const Matriculation(),
    ),
  ));
}

class Matriculation extends StatefulWidget {
  const Matriculation({Key? key}) : super(key: key);

  @override
  State<Matriculation> createState() => _MatriculationState();
}

class _MatriculationState extends State<Matriculation> {
  int matriculationPic = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  matriculationPic = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/Mat$matriculationPic.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
