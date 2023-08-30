import 'package:flutter/material.dart';
import 'package:udhaari_tracker/models/udhaari.dart';
import 'package:udhaari_tracker/widgets/udhaaris_list/udhaari_item.dart';

class UdhaariList extends StatelessWidget {
  const UdhaariList({super.key, required this.udhaaris});

  final List<Udhaari> udhaaris;
  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: udhaaris.length,
      itemBuilder: (ctx, index) => UdhaariItem(udhaaris[index]),
    ));
  }
}
