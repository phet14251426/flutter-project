import 'package:flutter/material.dart';
import 'package:francies_mobie_1/order/witgets/order_page.dart';

import '../../views/navbar_ui.dart';

class OrderUI extends StatefulWidget {
  const OrderUI({super.key});

  @override
  State<OrderUI> createState() => _OrderUIState();
}

class _OrderUIState extends State<OrderUI> {
  int i = 1, y = 1, z = 1;
  List<int> x = [1, 1, 1, 1];
  void add(int index) {
    setState(() {
      x[index]++;
      y++;
      z++;
    });
  }

  void remove(int index) {
    setState(() {
      x[index]--;
      if (x[index] < 0) {
        x[index] = 0;
      }
      y--;
      z--;
    });
  }

  int totel = 450;
  // late int totelpayment;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 40,
            left: 10,
            bottom: 10,
          ),
          child: Text(
            "Order List",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: 1,
          shrinkWrap: true,
          childAspectRatio: 4,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                          "assets/images/3.png",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "ไข่ม้วน",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              "เพิ่มเติม",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF28705),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            "250 B",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF28705),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton.small(
                              onPressed: () => remove(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFF28705),
                              ),
                            ),
                            Text(
                              x[i].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton.small(
                              onPressed: () => add(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFF28705),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                          "assets/images/4.png",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "พิซซ่า",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              "เพิ่มเติม",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF28705),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            "500 B",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF28705),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton.small(
                              onPressed: () => remove(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFF28705),
                              ),
                            ),
                            Text(
                              x[i].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton.small(
                              onPressed: () => add(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFF28705),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                          "assets/images/1.png",
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "สปาเก็ตตี้",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              //
                            },
                            child: Text(
                              "เพิ่มเติม",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF28705),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Text(
                            "250 B",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 200),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF28705),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton.small(
                              onPressed: () => remove(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFF28705),
                              ),
                            ),
                            Text(
                              x[i].toString(),
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            FloatingActionButton.small(
                              onPressed: () => add(i),
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Color(0xFFF28705),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 80),
        ),
        Divider(
          height: 10,
          thickness: 5,
          indent: 20,
          endIndent: 20,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "ยอดรวมรายการทั้งหมด",
                  style: TextStyle(
                    height: 3,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1000 B",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 60,
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color(0xFFF28705),
          ),
          child: TextButton(
            onPressed: () {
              openpayment();
            },
            child: Text(
              'ยืนยันออเดอร์',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                backgroundColor: Color(0xFFF28705),
              ),
            ),
          ),
        ),
      ],
    );
    // ignore: dead_code
  }

  Future openpayment() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Text(
                "รวมบิล",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 200, top: 10),
                child: Text(
                  "เมนูที่สั่ง",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ไข่ม้วน",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ไม่เอาผักครับ",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "250 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "พิซซ่า",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "500 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "สปาเก็ตตี้",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "250 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ยอดรวม",
                        style: TextStyle(
                          height: 3,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "1000 B",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, right: 5, left: 5),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28705),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: () async => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavbarEmployeeUI(),
                            )),
                        child: Text(
                          'ยกเลิก',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            backgroundColor: Color(0xFFF28705),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, right: 10, left: 10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF28705),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: TextButton(
                        onPressed: () {
                          confirm();
                        },
                        child: Text(
                          'ยืนยัน',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            backgroundColor: Color(0xFFF28705),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Future confirm() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Column(
            children: [
              Text(
                "รวมบิล",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "ออเดอร์ที่ 1",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 200, top: 10),
                child: Text(
                  "เมนูที่สั่ง",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ไข่ม้วน",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ไม่เอาผักครับ",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "250 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "พิซซ่า",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "500 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "สปาเก็ตตี้",
                        style: TextStyle(
                          height: 3,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "x 1",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "",
                        style: TextStyle(
                          height: 3,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "250 B",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.grey,
              ),
              Divider(
                height: 20,
                thickness: 3,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "ยอดรวม",
                        style: TextStyle(
                          height: 3,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "1000 B",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 100, right: 100),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF28705),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () async => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavbarEmployeeUI(),
                      )),
                  child: Text(
                    'ตกลง',
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(20),
              //   child: Container(
              //     width: 100,
              //     padding: EdgeInsets.all(10),
              //     margin: EdgeInsets.all(20),
              //     decoration: BoxDecoration(
              //       color: Color(0xFFF28705),
              //       borderRadius: BorderRadius.circular(40),
              //     ),
              //     child: TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         'ยืนยัน',
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 25,
              //           backgroundColor: Color(0xFFF28705),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
}
