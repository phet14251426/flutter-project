import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';

class Menu_page extends StatelessWidget {
  const Menu_page({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
    ), 
    itemBuilder: (context , index )=> Text(index.toString(),),
    itemCount: 6,
    );
  }
}