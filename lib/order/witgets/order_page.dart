import 'package:flutter/material.dart';

import 'order_ui.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        toolbarHeight: 80,
      ),
      body: OrderUI(),

      //
    );
  }
}
