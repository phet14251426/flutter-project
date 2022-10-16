import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderUI extends StatefulWidget {
  const OrderUI({super.key});

  @override
  State<OrderUI> createState() => _OrderUIState();
}

class _OrderUIState extends State<OrderUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'คำสั่งซื้อ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
