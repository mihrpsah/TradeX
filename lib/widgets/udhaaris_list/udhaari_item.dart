import 'package:flutter/material.dart';
import 'package:udhaari_tracker/models/udhaari.dart';

class UdhaariItem extends StatelessWidget {
  const UdhaariItem(this.udhaari, {super.key});

  final Udhaari udhaari;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          Text(udhaari.title.toString()),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text('\$${udhaari.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[udhaari.category]),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(udhaari.date.toString())
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}
