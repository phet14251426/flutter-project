import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/menu/witgets/single_item_page.dart';



class MenuUI extends StatefulWidget {
  const MenuUI({super.key});

  @override
  State<MenuUI> createState() => _MenuUIState();
}

class _MenuUIState extends State<MenuUI> {

  int price = 450;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.92,
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 2,
                      blurRadius: 2),
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SingleItemPage()),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    // alignment: Alignment(0.2, 0.2),
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage(
                        "assets/images/$i.png",
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "แซ่บๆเด้อ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$price B",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),

            // TextButton(
            //   onPressed: () async => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => ProductItem(),
            //       )),
            // child: Container(
            //   margin: EdgeInsets.all(20),
            //   alignment: Alignment(1, -1),
            //   child: CircleAvatar(
            //     radius: 100,
            //     backgroundImage: AssetImage(
            //       "assets/images/$i.png",
            //     ),
            //   ),

            // ),

            // ),
          ),
      ],
    );
  }
}
// class MenuUI extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2, // Number of columns
//         mainAxisSpacing: 4.0, // Vertical spacing between grid items
//         crossAxisSpacing: 4.0, // Horizontal spacing between grid items
//       ),
//       itemCount: 6, // Total number of buttons
//       itemBuilder: (BuildContext context, int index) {
//         return GestureDetector(
//           onTap: () {
//             // Handle button press
//             // Add your desired functionality here
//           },
//           child: Container(
//             margin: EdgeInsets.all(100),
//             color: Colors.white,
//             child: Center(
//               child: Text(
//                 'Button ${index + 1}',
//                 style: TextStyle(fontSize: 20.0, color: Colors.black),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

