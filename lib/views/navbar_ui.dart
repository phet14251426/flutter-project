import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/views/confirm.dart';
import 'package:francies_mobie_1/views/confirm_page.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/login_page.dart';
import 'package:francies_mobie_1/views/login_page.dart';

import '../order/witgets/order_ui.dart';

class NavbarEmployeeUI extends StatefulWidget {
  const NavbarEmployeeUI({super.key});

  @override
  State<NavbarEmployeeUI> createState() => _NavbarEmployeeUIState();
}

class _NavbarEmployeeUIState extends State<NavbarEmployeeUI> {
  int _selectedIndex = 0;
  final screeens = [
    HomePage(),
    Confirm_page(),
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
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFFF28705),
          actions: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 15, 15),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),);
                  },
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
              icon: Icon(Icons.check),
              label: 'เลือกที่นั่ง',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.outbox_rounded,
              ),
              label: 'ออเดอร์',
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
