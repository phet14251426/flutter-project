import 'package:flutter/material.dart';
import 'package:francies_mobie_1/login/widgets/login_from.dart';
import 'package:francies_mobie_1/home/widgets/order_at_home.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/menu_ui.dart';
import 'package:francies_mobie_1/views/navbar_manager_ui.dart';
import 'package:francies_mobie_1/views/navbar_ui.dart';
import 'package:francies_mobie_1/views/product_page.dart';
import 'package:francies_mobie_1/views/splash_screen_ui.dart';
import 'package:francies_mobie_1/views/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:NavbarEmployeeUI(),
    ),
  );
}
