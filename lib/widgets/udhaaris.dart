import 'package:flutter/material.dart';
import 'package:udhaari_tracker/models/udhaari.dart';
import 'package:udhaari_tracker/widgets/new_udhaari.dart';
import 'package:udhaari_tracker/widgets/udhaaris_list/udhaaris_list.dart';

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
        title: "Something",
        amount: 34.42,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _openAddUdhaariOverlay() {
    showModalBottomSheet(
        context: context, builder: (ctx) => const NewUdhaari());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Udhaari Tracker"),
        actions: [
          IconButton(
              onPressed: _openAddUdhaariOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(children: [
        const Text("data"),
        Expanded(
          child: UdhaariList(
            udhaaris: _registeredUdhaaris,
          ),
        )
      ]),
    );
  }
}
