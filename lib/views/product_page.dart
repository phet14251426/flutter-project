import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:francies_mobie_1/views/login_page.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF28705),
        toolbarHeight: 100,
        actions: [
          Row(
            children: [
              IconButton(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 15, 15),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUI(),
                      ));
                },
                icon: Icon(
                  Icons.logout_rounded,
                  size: 45,
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildImage(),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'แซบๆเด้อ',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
          ),
        ],
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     automaticallyImplyLeading: false,
    //     backgroundColor: Color(0xFFF28705),
    //     toolbarHeight: 100,
    //     actions: [
    //       Row(
    //         children: [
    //           IconButton(
    //             padding: EdgeInsets.fromLTRB(0.0, 10.0, 15, 15),
    //             onPressed: () {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => LoginUI(),
    //                   ));
    //             },
    //             icon: Icon(
    //               Icons.logout_rounded,
    //               size: 45,
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    //   body: Column(
    //     children: [
    //       _buildImage(),

    //     ],
    //   ),
    // );
  }
}

Image _buildImage() {
  final ProductImage = 'assets/images/product.jpg';
  return Image.asset(
    ProductImage,
    fit: BoxFit.fitWidth,
  );
}

Expanded _buildInfo() => Expanded(
      child: Column(
        children: [
          Text(
            'ใส่เพิ่ม',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
          ),
          Checkbox(
            value: timeDilation != 1.0, onChanged: (bool? value) {  },
            
          )
        ],
  ),
);
