import 'package:flutter/material.dart';
import 'package:francies_mobie_1/login/witgets/button_global.dart';
import 'package:francies_mobie_1/login/witgets/text_form_global.dart';
import 'package:francies_mobie_1/views/home_page.dart';
import 'package:francies_mobie_1/views/register.dart';
import 'package:francies_mobie_1/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'navbar_ui.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  Future<void> Login(String username, String password) async {
    try {
      Response response = await post(
        Uri.parse('http://192.168.1.107:8081/api/Mobile/login'),
        body: {
          'username': username,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        Navigator.push(context as BuildContext,
            MaterialPageRoute(builder: (context) => NavbarEmployeeUI()));
        print('Login successfully');
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Failed to Login')));
        print('failed to login');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF28705),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage('assets/images/SimpleLogo.png'),
                    height: 275,
                    width: 275,
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  'เข้าสู่ระบบ',
                  style: GoogleFonts.kanit(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 25),

                ///Username
                TextFormGlobal(
                  controller: usernameController,
                  text: 'Username',
                  obscure: false,
                  textInputType: TextInputType.text,
                ),
                SizedBox(height: 25),

                ///password
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Password',
                  obscure: true,
                  textInputType: TextInputType.text,
                ),

                SizedBox(height: 25),
                //LoginButton
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => NavbarEmployeeUI()));
                    Login(
                      usernameController.text.toString(),
                      passwordController.text.toString(),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.shade500,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Text(
                      'SignIn',
                      style: GoogleFonts.kanit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10),),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => registerPage(),
                      ),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.shade500,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Text(
                      'SignUp',
                      style: GoogleFonts.kanit(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
