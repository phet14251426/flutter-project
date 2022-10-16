import 'package:flutter/material.dart';

class SelectTableUI extends StatefulWidget {
  const SelectTableUI({super.key});

  @override
  State<SelectTableUI> createState() => _SelectTableUIState();
}

class _SelectTableUIState extends State<SelectTableUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'กลับบ้านกับทานที่ร้าน',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
