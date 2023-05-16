import 'package:flutter/material.dart';
import 'package:francies_mobie_1/views/confirm.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/navbar_ui.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import '../../menu/witgets/menu_ui.dart';


class order_at_home extends StatefulWidget {
  const order_at_home({super.key});

  @override
  State<order_at_home> createState() => _order_at_homeState();
}

class _order_at_homeState extends State<order_at_home> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: 400,
        width: 400,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menu_page(),
                ));
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 350.0,
                  color: Color(0xFFF28705),
                ),
                Text(
                  'สั่งกลับบ้าน',
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

    // return Container(

    //   height: 450,
    //   width: 450,
    //   margin: EdgeInsets.all(20),

    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(20.0),
    //       color: Color.fromARGB(255, 249, 50, 0)),
    //   child: TextButton(
    //     onPressed: () {
    //       // Navigator.push(
    //       //     context,
    //       //   MaterialPageRoute(
    //       //     builder: (context) => (),
    //       //   )
    //       // );
    //     },
    //     child: Column(
    //       children: <Widget>[
    //       icon : Icon(Icon.table_bar_sharp),
    //       Text('สั่งกลับบ้าน'),
    //       ]

    //     ),
    //   ),
    // );
  }
}
