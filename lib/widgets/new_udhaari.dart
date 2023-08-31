import 'package:flutter/material.dart';

class NewUdhaari extends StatefulWidget {
  const NewUdhaari({super.key});

  @override
  State<NewUdhaari> createState() {
    return _NewUdhaariState();
  }
}

class _NewUdhaariState extends State<NewUdhaari> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _amountController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Title")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  maxLength: 20,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(label: Text("Amount")),
                ),
              )
            ],
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: const Text("Delete")),
              ElevatedButton(
                  onPressed: () {
                    print(_titleController.text);
                    print(_amountController.text);
                  },
                  child: const Text("Save Expense"))
            ],
          )
        ],
      ),
    );
  }
}
