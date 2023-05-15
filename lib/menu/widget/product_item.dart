import 'package:flutter/material.dart';
import 'package:francies_mobie_1/views/product_page.dart';

class MyProduct extends StatelessWidget {
  final double maxHeight;
  const MyProduct(this.maxHeight, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Product_item(),
        ],
      ),
      // color: Colors.white,
      // child: Column(
      //   children: [
      //     // _buildImage(),
      //     // _buildInfo(),
      //     Product_item(),
      //   ],
      // ),
    );
  }

  // Image _buildImage() {
  //   final height = maxHeight * 0.7;
  //   final productImage =
  //       'https://img.kapook.com/u/2021/sireeporn/Cooking-2/A03.jpg';
  //   return Image.network(
  //     productImage,
  //     height: 350,

  //   );
  // }

  // Column _buildInfo() => Column(
  //       children: [
  //         Text(
  //           "แซบๆเด้อ",
  //           style: TextStyle(fontSize: 25.0),
  //         ),
  //         Text(
  //           " $price  B",
  //           style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
  //         ),
  //       ],
  //     );
}

class Product_item extends StatelessWidget {
  const Product_item({super.key});

  get price => 450;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 8.0,
      margin: EdgeInsets.only(bottom: 50, left: 50, right: 50, top: 70),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductItem(),
              ));
        },
        

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 20,
                child: Image.asset('https://img.kapook.com/u/2021/sireeporn/Cooking-2/A03.jpg'),
                // backgroundImage: NetworkImage(
                //   'https://img.kapook.com/u/2021/sireeporn/Cooking-2/A03.jpg',
                // ),
              ),
              // CircleAvatar(

              //   backgroundImage: NetworkImage(
              //       'https://img.kapook.com/u/2021/sireeporn/Cooking-2/A03.jpg',),
              //   radius: 100,

              // ),
              Text(
                "แซ่บๆเด้อ",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                "$price  B",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
