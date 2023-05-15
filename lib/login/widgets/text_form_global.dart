import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormGlobal extends StatelessWidget {
  TextFormGlobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.obscure,
      required this.textInputType});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        top: 2.5,
        left: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: GoogleFonts.kanit(
            height: 1,
          ),
        ),
      ),
    );
  }
}
