import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/widget/menu_ui.dart';
import 'package:francies_mobie_1/views/confirm.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/login_page.dart';
import 'package:francies_mobie_1/views/menu_ui.dart';
import 'package:francies_mobie_1/views/order_ui.dart';
import 'package:francies_mobie_1/views/select_table_ui.dart';

class ManagerUI extends StatefulWidget {
  const ManagerUI({super.key});

  @override
  State<ManagerUI> createState() => _ManagerUIState();
}

class _ManagerUIState extends State<ManagerUI> {
  List pages = [
    HomePage(),
    ConfirmUI(),
    OrderUI(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.menu_rounded),
          onPressed: () {},

          //เปิดดูรายการ
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
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFF28705),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: Colors.white, size: 30),
        selectedFontSize: 20,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'เลือกที่นั่ง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_rounded),
            label: 'เมนู',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'คำสังซื้อ',
          ),
        ],
      ),
    );
  }
}
