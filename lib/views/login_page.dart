// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:francies_mobie_1/login/widgets/header.dart';
// import 'package:francies_mobie_1/login/widgets/login_from.dart';
// import 'package:francies_mobie_1/login/widgets/mytextfield.dart';
// import 'package:francies_mobie_1/models/login_model.dart';
// import 'package:http/http.dart';

// class LoginUI extends StatefulWidget {
//   LoginUI({super.key});

//   @override
//   State<LoginUI> createState() => _LoginUIState();
// }

// class _LoginUIState extends State<LoginUI> {
//   late LoginRequestModel requestModel;

//   @override
//   void initState() {
//     super.initState();
//     requestModel = new LoginRequestModel(password: '', username: '');
//   }

//   @override
//   Widget build(BuildContext context) {
//     double currentWidth = MediaQuery.of(context).size.width;
//     double currentHeight = MediaQuery.of(context).size.height;

//     final TextEditingController usernameControllor = TextEditingController();
//     final TextEditingController passwordControllor = TextEditingController();

//     void login(String username, password) async {
//       try {
//         Response response = await post(
//           Uri.parse('http://192.168.1.107:8081/api/Mobile/login'),
//           body: {
//             'username': username,
//             'password': password,
//           },
//         );

//         if (response.statusCode == 200) {
//           var data = jsonDecode(response.body.toString());
//           print(data['token']);
//           print('Welcome');
//         } else {
//           print('failed to login');
//         }
//       } catch (e) {
//         print(e.toString());
//       }
//     }

//     return Scaffold(
//       backgroundColor: Color(0xFFF28705),
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             children: [
//               //logo
//               // Header(),
//               const SizedBox(height: 25),
//               //username
//               TextFormField(
//                 onSaved: (input) => requestModel.username = input!,
//                 decoration: InputDecoration(
//                   hintText: 'Username',
//                 ),
//               ),
//               const SizedBox(height: 25),
//               //password
//               TextFormField(
//                 onSaved: (input) => requestModel.password = input!,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                 ),
//               ),
//               const SizedBox(height: 25),
//               //loginbutton
//               LoginButton(
//                 onTap: () {
//                   login(usernameControllor.text.toString(),
//                       passwordControllor.text.toString());
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
