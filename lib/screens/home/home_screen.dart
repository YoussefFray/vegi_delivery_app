import 'package:flutter/material.dart';
import 'package:food_app/screens/home/drawer_side.dart';
import 'package:food_app/screens/home/product_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFcbcbcb),
      drawer: buildDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text("Home", style: TextStyle(color: Colors.black, fontSize: 17)),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: const Color(0xFFd4d181),
            child: Icon(Icons.search, color: Colors.black, size: 15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: const Color(0xFFd4d181),
              child: Icon(Icons.shop, color: Colors.black, size: 15),
            ),
          ),
        ],
        backgroundColor: const Color(0xFFd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://media.post.rvohealth.io/wp-content/uploads/2020/08/fruits-and-vegetables-thumb-1-732x549.jpg'),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.green[100],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all vegetables products',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
         
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text('see all', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            //all products
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                ProductWidget(
                  productImageURL:
                      'https://agritech-north.ca/cdn/shop/products/Mint_Peppermint_8.jpg?v=1690483260',
                  productName: 'Peppermint',
                  productPrice: 50,
                  onTap: () {
                    // Handle onTap action
                  },
                  productId: 'unique_id_1',
                ),
                  ProductWidget(
                  productImageURL:
                      'https://cdn.britannica.com/99/143599-050-C3289491/Watermelon.jpg',
                  productName: 'watermelon',
                  productPrice: 50,
                  onTap: () {
                    // Handle onTap action
                  },
                  productId: 'unique_id_2',
                ),
                  ProductWidget(
                  productImageURL:
                      'https://chaldn.com/_mpimage/sobuj-angur-green-grapes-12-gm-250-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D134876&q=best&v=1',
                  productName: 'grapes',
                  productPrice: 50,
                  onTap: () {
                    // Handle onTap action
                  },
                  productId: 'unique_id_3',
                ),
                // Add more ProductWidget instances as needed
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
