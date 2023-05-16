import 'package:flutter/material.dart';
import 'package:francies_mobie_1/constants/assets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 50),
      child: Image.asset(Asset.LOGO_IMAGE),
    );
  }
}
