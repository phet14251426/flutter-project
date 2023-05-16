import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:matcher/matcher.dart';
import 'package:francies_mobie_1/menu/witgets/menu_navber.dart';

import '../../order/witgets/order_page.dart';

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
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Color(0xFFF28705),
        onPressed: () async => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderPage(),
            )),
        child: Icon(
          Icons.shopping_cart,
          size: 40,
        ),
      ),

      //
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
