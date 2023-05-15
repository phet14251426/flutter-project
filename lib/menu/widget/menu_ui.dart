import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/widget/menu_page.dart';

class MenuUI extends StatelessWidget {
  const MenuUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
      ),
      body: ListView(
        children: [Menu_page()],
      ),
    );
  }
}
