import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:francies_mobie_1/views/restaurant_ui.dart';
 
class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        toolbarHeight: 80,
      ),
      body: restaurantUI(),

      //
    );
  }
}