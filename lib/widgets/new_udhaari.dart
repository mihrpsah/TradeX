import 'package:flutter/material.dart';

class NewUdhaari extends StatefulWidget {
  const NewUdhaari({super.key});

  @override
  State<NewUdhaari> createState() {
    return _NewUdhaariState();
  }
}

class _NewUdhaariState extends State<NewUdhaari> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text("Title")),
          )
        ],
      ),
    );
  }
}
