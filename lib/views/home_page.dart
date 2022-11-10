import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:francies_mobie_1/constants/assets.dart';
import 'package:francies_mobie_1/home/widgets/order_at_home.dart';
import 'package:francies_mobie_1/home/widgets/order_at_restaurant.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          order_at_restaurant(),
          order_at_home(),
        ],
      ),
    );
  }
}
