import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:flutter/cupertino.dart';
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

Future<Menu> getMenu(String id) async {
  try {

    var uri = Uri(
      scheme: 'http',
      host: '192.168.1.107',
      port: 8081,
      path: '/api/products/getProduct/${id}',
    );
    Response response = await get(uri);

    if (response.statusCode == 200) {
      var datas = jsonDecode(utf8.decode(response.bodyBytes));

      print(uri.toString());
      return Menu.fromJson(datas);
    } else {
      throw Exception('Failed to load Menu');
    }
  } catch (e) {
    throw Exception(e);
  }
}

class SingleItemPage extends StatefulWidget {
  final String menuID;
  SingleItemPage({Key? key, required this.menuID}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SingleItemPageState(this.menuID);
  }
}

class _SingleItemPageState extends State<SingleItemPage> {
  String menuID;
  _SingleItemPageState(this.menuID);
  late Future<Menu> menu;
  @override
  void initState() {
    super.initState();
    menu = getMenu(menuID);
  }

  int i = 1;
  void add() {
    setState(() {
      i++;
    });
  }

  void remove() {
    setState(() {
       i--;
      if (i < 0) {
        i = 0;
      }
     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF28705),
          toolbarHeight: 80,
        ),
        body: FutureBuilder<Menu>(
          future: menu,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: EdgeInsets.all(1),
                child: ListView(
                  children: [
                    Image.network(
                        "http://192.168.1.107:8081/images/${snapshot.data!.image}"),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            snapshot.data!.name,
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            snapshot.data!.price.toString() + " B",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 25),
                      child: Text(
                        "รายละเอียดเพิ่มเติม",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          hintText: 'เช่น ไม่เอาผัก',
                        ),
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                    ),
                    Container(
                      width: 20,
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(left: 250, right: 250),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28705),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: remove,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.remove,
                              color: Color(0xFFF28705),
                            ),
                          ),

                          Text(
                            "$i",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: add,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              color: Color(0xFFF28705),
                            ),
                          ),
                          // IconButton(
                          //   icon: Icon(Icons.add),
                          //   onPressed: () {
                          //     i++;
                          //   },
                          //   color: Colors.white,
                          //   iconSize: 30,
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      width: 20,
                      padding: EdgeInsets.all(30),
                      margin: EdgeInsets.only(left: 220, right: 220, top: 30),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28705),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: () async => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu_page(),
                            )),
                        child: Text(
                          'เพิ่มในตะกร้า',
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: EdgeInsets.all(20),
                    // ),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        )
        // body: SafeArea(
        //   child: Padding(
        //     padding: EdgeInsets.only(top: 25, left: 15, right: 10),
        //     child: ListView(children: [],),
        //   ),
        // ),
        );
  }
}
