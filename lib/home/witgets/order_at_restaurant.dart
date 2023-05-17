import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'package:francies_mobie_1/views/navbar_ui.dart';


import '../../menu/witgets/menu_page.dart';
import '../../views/restaurant_page.dart';


class order_at_restaurant extends StatefulWidget {
  final double elevation = 20;

  const order_at_restaurant({super.key});

  @override
  State<order_at_restaurant> createState() => _order_at_restaurantState();
}

class _order_at_restaurantState extends State<order_at_restaurant> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 400,
        width: 400,
        margin: EdgeInsets.all(20),
        child: TextButton(
           onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RestaurantPage(),
                ));
          },
          child: Center(
            child: Column(
              
              
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.table_bar_sharp,
                  size: 350.0,
                  color: Color(0xFFF28705),
                ),
                Text(
                  'ทานที่ร้าน',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
