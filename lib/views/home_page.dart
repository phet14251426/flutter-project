import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:francies_mobie_1/home/witgets/order_at_home.dart';
import 'package:francies_mobie_1/home/witgets/order_at_restaurant.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:francies_mobie_1/views/confirm.dart';
import 'package:francies_mobie_1/views/order_ui.dart';
import 'package:francies_mobie_1/views/restaurant_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../menu/witgets/menu_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RestaurantPage(), //รอเปลี่ยนไปหน้าเมนู
                ));
              },
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/restaurant.png",
                          height: 170,
                        ),
                      ),
                      Text(
                        "ทานที่ร้าน",
                        style: GoogleFonts.kanit(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Menu_page(), //รอเปลี่ยนไปหน้า menu
                ));
              },
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/images/home.png",
                          height: 170,
                        ),
                      ),
                      Text(
                        "สั่งกลับบ้าน",
                        style: GoogleFonts.kanit(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
