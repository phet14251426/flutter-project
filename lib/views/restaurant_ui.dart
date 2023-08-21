import 'package:flutter/material.dart';
import 'package:francies_mobie_1/menu/witgets/menu_page.dart';

class restaurantUI extends StatelessWidget {
  const restaurantUI({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GridView.count(
          crossAxisCount: 1,
          shrinkWrap: true,
          childAspectRatio: 4,
          children: [
            for (int i = 1; i < 11; i++,)
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
                        Icons.table_bar,
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
                              "โต๊ะที่ $i",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 150),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 30, right: 30),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF28705),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Menu_page(),
                                ),
                              );
                            },
                            child: Text(
                              'เลือก',
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
