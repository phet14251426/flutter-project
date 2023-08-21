import 'package:flutter/material.dart';

import '../order/witgets/order_page.dart';

class ConfirmUI extends StatefulWidget {
  const ConfirmUI({super.key});

  @override
  State<ConfirmUI> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ConfirmUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      Icon(
                        Icons.food_bank_outlined,
                        size: 120,
                        color: Color(0xFFF28705),
                      ),
                      Container(
                        width: 250,
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "รายการอาหารที่ 1",
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
                                "กดเพื่อดูรายการ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF28705),
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 30, right: 30),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF28705),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            onPressed: () async => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPage(),
                                )),
                            child: Text(
                              'ชำระเงิน',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
