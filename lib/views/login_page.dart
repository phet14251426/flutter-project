import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:francies_mobie_1/login/widgets/header.dart';
import 'package:francies_mobie_1/login/widgets/login_from.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF28705),
      body: Stack(
        children: [
          Column(
            children: [
              Header(),
              LoginForm(),
              
            ],
          ),
        ],
      ),
    );
  }
}
