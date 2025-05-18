import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(10),
      title: const Row(
        children: [
          Icon(Icons.warning, color: Colors.red, size: 27),
          SizedBox(width: 10),
          Text('Warning!', style: TextStyle(fontSize: 27)),
        ],
      ),
      content: const Text(
        'Please select your answer',
        style: TextStyle(fontSize: 20),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK', style: TextStyle(fontSize: 20)),
        ),
      ],
    );
  }
}
