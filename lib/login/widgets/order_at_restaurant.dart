import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class order_at_restaurant extends StatefulWidget {
  final double elevation = 20;

  const order_at_restaurant({super.key});


  @override
  State<order_at_restaurant> createState() => _order_at_restaurantState();
}

class _order_at_restaurantState extends State<order_at_restaurant> {
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
          'นั่งกินร้าน',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
