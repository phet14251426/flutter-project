// import 'package:flutter/material.dart';

// class MenuUI extends StatelessWidget {
//   MenuUI({super.key});

//   final List<Map> MyProduct = 
//     List.generate(10, (index) => {"id" :index,"name": "Product $index"})
//     .toList();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFF28705),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10.0),
//         child: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//           maxCrossAxisExtent: 200,
//           childAspectRatio: 1,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//           ), 
//           itemBuilder: ),
        
//       ),
//     );
//   }
// }

// // class MyProduct extends StatelessWidget {
// //   const MyProduct({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Card(
// //       shape: RoundedRectangleBorder(
// //         borderRadius: BorderRadius.circular(15.0),
// //       ),
// //       elevation: 8.0,
// //       margin: EdgeInsets.all(25.0),
// //       child: InkWell(
// //         onTap: () {},
// //         child: Center(
// //           child: Column(
// //             children: <Widget>[
// //               CircleAvatar(
// //                 backgroundImage: NetworkImage(
// //                     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmvtYsDNoMdtTBULFObxgwj4AZvPpZAUetOeG7eyOao-VS_8XFwawV7eH8Dly55bQ0pyw&usqp=CAU'),
// //                 radius: 80,
// //               ),
// //               Text(
// //                 "แซ่บๆเด้อ",
// //                 style: TextStyle(fontSize: 30.0),
// //               ),
// //               Text(
// //                 "590 B",
// //                 style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
