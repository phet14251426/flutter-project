import 'package:flutter/material.dart';
import 'package:francies_mobie_1/views/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   //หน่วงเวลา
  //   Future.delayed(
  //     Duration(
  //       seconds: 5,
  //     ),
  //     () => Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => LoginUI(),
  //       ),
  //     ),
  //   );
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF28705),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/SimpleLogo.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 15.0,
                ),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Created By : SAU Company Co., Ltd.',
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
