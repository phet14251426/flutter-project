import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/navbar_ui.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController usernameControllor = TextEditingController();
  TextEditingController passwordControllor = TextEditingController();

  @override
  void initState() {
    usernameControllor = TextEditingController();
    passwordControllor = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameControllor.dispose();
    passwordControllor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        _buildForm(),
      ],
    );
  }

  Card _buildForm() => Card(
        margin: EdgeInsets.only(bottom: 100, left: 200, right: 200, top: 100),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: FormInput(),
        ),
      );
}

class FormInput extends StatefulWidget {
  TextEditingController usernameControllor = TextEditingController();
  TextEditingController passwordControllor = TextEditingController();

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  final _color = Colors.black54;

  bool _obscureTextPassword = true;
  final _passwordFocusNode = FocusNode();

  @override
  void initState() {
    _obscureTextPassword = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: widget.usernameControllor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'UserName',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: _obscureTextPassword,
              controller: widget.passwordControllor,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Password',
                suffixIcon: IconButton(
                    icon: FaIcon(
                      _obscureTextPassword
                          ? FontAwesomeIcons.eye
                          : FontAwesomeIcons.eyeSlash,
                      color: _color,
                      size: 15.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureTextPassword = !_obscureTextPassword;
                      });
                    }),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFFF28705)),
            child: TextButton(
              onPressed: () async => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavbarEmployeeUI(),
                  )),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
