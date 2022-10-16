import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class order_at_home extends StatefulWidget {
  const order_at_home({super.key});

  @override
  State<order_at_home> createState() => _order_at_homeState();
}

class _order_at_homeState extends State<order_at_home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 450,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.black26),
      child: TextButton(
        onPressed: () {
          // Navigator.push(
          //     context,
          //   MaterialPageRoute(
          //     builder: (context) => (),
          //   )
          // );
        },
        child: Text(
          'สั่งกลับบ้าน',
          style: TextStyle(color: Colors.black, fontSize: 25),
          
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
