import 'package:flutter/material.dart';
import 'package:francies_mobie_1/login/witgets/login_from.dart';
import 'package:francies_mobie_1/home/witgets/order_at_home.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:francies_mobie_1/order/witgets/order_page.dart';
import 'package:francies_mobie_1/views/confirm_page.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/navbar_ui.dart';
import 'package:francies_mobie_1/views/splash_screen_ui.dart';
import 'package:francies_mobie_1/views/login_page.dart';
import 'home/witgets/order_at_restaurant.dart';
import 'order/witgets/order_ui.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    ),
  );
}
