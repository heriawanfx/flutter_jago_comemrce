import 'package:flutter/material.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog.adaptive(
      title: Row(
        children: [
          CircularProgressIndicator.adaptive(),
          SizedBox(width: 20),
          Text('Loading...', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
