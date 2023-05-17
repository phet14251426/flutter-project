import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/menu/witgets/single_item_page.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Menu {
  final String uuid;
  final String name;
  final double price;
  final String image;

  const Menu({
    required this.uuid,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      uuid: json['id'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}

Future<List<Menu>> getAllMenu() async {
  try {
    var uri = Uri(
      scheme: 'http',
      host: '192.168.1.107',
      port: 8081,
      path: '/api/products/getProduct',
    );
    Response response = await get(uri);

    if (response.statusCode == 200) {
      // print(utf8.decode(response.bodyBytes));
      // var json = utf8.decode(response.bodyBytes);
      List<Menu> menu_list = [];

      var datas = jsonDecode(utf8.decode(response.bodyBytes));

      for (var data in datas) {
        menu_list.add(Menu.fromJson(data));
      }
      print(menu_list);
      return menu_list;
    } else {
      throw Exception('Failed to load Menu');
    }
  } catch (e) {
    throw Exception(e);
  }
}

class MenuUI extends StatefulWidget {
  const MenuUI({super.key});

  @override
  State<MenuUI> createState() => _MenuUIState();
}

class _MenuUIState extends State<MenuUI> {
  late Future<List<Menu>> getallmenu;
  @override
  void initState() {
    super.initState();
    getallmenu = getAllMenu();
    print('init');
  }

  int price = 450;
  String productname = 'แซ่บๆเด้อ';
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Menu>>(
      future: getallmenu,
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.92,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Container(
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
                        MaterialPageRoute(
                            builder: (context) => SingleItemPage(menuID: snapshot.data![index].uuid,)),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        // alignment: Alignment(0.2, 0.2),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(
                            "http://192.168.1.107:8081/images/" +
                                snapshot.data![index].image,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        snapshot.data![index].name,
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
                            snapshot.data![index].price.toString() + " B",
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
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        // By default, show a loading spinner.
        return Text('${snapshot.error}');
      },
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

