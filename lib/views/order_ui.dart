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
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {},

          //ย้อนกลับ
        ),
        actions: [
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.logout_rounded),
            onPressed: () {},
            //logout
          )
        ],
      ),
      // body: controller.get Container(
      //   child: Center(
      //     child:
      //   ),
      // ),
    );
  }
}
