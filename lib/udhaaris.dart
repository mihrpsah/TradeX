import 'package:flutter/material.dart';
import 'package:udhaari_tracker/models/udhaari.dart';
import 'package:udhaari_tracker/udhaaris_list.dart';

class Udhaaris extends StatefulWidget {
  const Udhaaris({super.key});

  @override
  State<StatefulWidget> createState() {
    return _UdhaarisState();
  }
}

class _UdhaarisState extends State<Udhaaris> {
  final List<Udhaari> _registeredUdhaaris = [
    Udhaari(
        title: "Flutter app",
        amount: 69.42,
        date: DateTime.now(),
        category: Category.work),
    Udhaari(
        title: "Title 2",
        amount: 69.42,
        date: DateTime.now(),
        category: Category.work),
    Udhaari(
        title: "Porn",
        amount: 34.42,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text("data"),
        Expanded(
          child: UdhaariList(
            udhaaris: _registeredUdhaaris,
          ),
        )
      ]),
    );
  }
}
