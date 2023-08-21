import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:matcher/matcher.dart';
import 'package:francies_mobie_1/menu/witgets/menu_navber.dart';

import '../../order/witgets/order_page.dart';
import '../../order/witgets/order_ui.dart';
import '../../views/navbar_ui.dart';

class Menu_page extends StatelessWidget {
  const Menu_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          MenuUI(),
        ],
      ),
      floatingActionButton: Wrap(
        //will break to another line on overflow
        direction: Axis.horizontal,

        //use vertical to show  on vertical axis
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: FloatingActionButton.large(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavbarEmployeeUI(),
                        ),
                      );
                    },
                    backgroundColor: Color(0xFFF28705),
                    child: Icon(Icons.home),
                  ),
                ), //button first

                Container(
                  margin: EdgeInsets.all(10),
                  child: FloatingActionButton.large(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderPage(),
                        ),
                      );
                    },
                    backgroundColor: Color(0xFFF28705),
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
              ],
            ),
          ),
        ], // button second
        // floatingActionButton: FloatingActionButton.large(
        //   backgroundColor: Color(0xFFF28705),
        //   onPressed: () async => Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => OrderPage(),
        //       )),
        //   child: Icon(
        //     Icons.shopping_cart,
        //     size: 40,
        //   ),
        // ),

        //
      ),
    );

    // return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //   crossAxisCount: 2,
    //   childAspectRatio: 1.5,
    //   crossAxisSpacing: 5,
    //   mainAxisSpacing: 5,
    // ),
    // itemBuilder: (context , index)=> Text(index.toString(),),
    // itemCount: 6,
    // );
  }
}
