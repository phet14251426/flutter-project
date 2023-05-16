
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';
import 'package:francies_mobie_1/menu/witgets/menu_ui.dart';
import 'package:flutter/cupertino.dart';

import '../../views/navbar_ui.dart';

class SingleItemPage extends StatefulWidget {
  const SingleItemPage({super.key});

  @override
  State<SingleItemPage> createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  
  int i = 1;
  void add() {
    setState(() {
      i++;
    });
  }

  void remove() {
    setState(() {
      
      i--;
    });
  }



  int price = 450;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: EdgeInsets.all(1),
        child: ListView(
          children: [
            Image.asset("assets/images/1.png"),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "แซ่บๆเด้อ",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "$price B",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
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
                    child: Icon(Icons.remove,color: Color(0xFFF28705),),
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
                    child: Icon(Icons.add,color: Color(0xFFF28705),),
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
      ),
      // body: SafeArea(
      //   child: Padding(
      //     padding: EdgeInsets.only(top: 25, left: 15, right: 10),
      //     child: ListView(children: [],),
      //   ),
      // ),
    );
  }
}
