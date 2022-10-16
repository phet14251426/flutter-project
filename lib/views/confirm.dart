import 'package:flutter/material.dart';

class ConfirmUI extends StatefulWidget {
  const ConfirmUI({super.key});

  @override
  State<ConfirmUI> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ConfirmUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'เตรียมเสิร์ฟ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
