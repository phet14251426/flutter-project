import 'package:flutter/material.dart';

class MenuUI extends StatelessWidget {
  const MenuUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyProduct(),
            MyProduct(),
            MyProduct(),
            MyProduct(),
            MyProduct(),
            MyProduct(),
          ],
        ),
      ),
    );
  }
}

class MyProduct extends StatelessWidget {
  const MyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      margin: EdgeInsets.all(25.0),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmvtYsDNoMdtTBULFObxgwj4AZvPpZAUetOeG7eyOao-VS_8XFwawV7eH8Dly55bQ0pyw&usqp=CAU'),
                radius: 80,
              ),
              Text(
                "แซ่บๆเด้อ",
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                "590 B",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
