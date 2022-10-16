import 'package:flutter/material.dart';
import 'package:francies_mobie_1/views/confirm.dart';
import 'package:francies_mobie_1/views/menu_ui.dart';
import 'package:francies_mobie_1/views/order_ui.dart';
import 'package:francies_mobie_1/views/select_table_ui.dart';

class NavbarEmployeeUI extends StatefulWidget {
  const NavbarEmployeeUI({super.key});

  @override
  State<NavbarEmployeeUI> createState() => _NavbarEmployeeUIState();
}

class _NavbarEmployeeUIState extends State<NavbarEmployeeUI> {
  int _selectedIndex = 0;
  final screeens = [
    SelectTableUI(),
    MenuUI(),
    ConfirmUI(),
    OrderUI(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color(0xFFF28705),
          actions: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 15, 15),
                  onPressed: () {},
                  icon: Icon(
                    Icons.logout_rounded,
                    size: 45,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: screeens[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
          selectedFontSize: 20,
          backgroundColor: Color(0xFFF28705),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.table_bar_sharp),
              label: 'เลือกที่นั่ง',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'เมนูอาหาร',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
              ),
              label: 'เตรียมเสิร์ฟ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'คำสั่งซื้อ',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
