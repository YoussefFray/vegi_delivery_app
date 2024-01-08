import 'package:flutter/material.dart';
import 'package:food_app/providers/product_provider.dart';
import 'package:food_app/screens/home/drawer_side.dart';
import 'package:food_app/screens/home/product_widget.dart';
import 'package:food_app/screens/product_overview/product_overview.dart';
import 'package:food_app/screens/search/search.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;

  @override
  void initState() {
    super.initState();
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchFruitsproductData();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);

    return GestureDetector(
      onTap: () {
        print('Tapped HomeScreen');
        // You can add any specific logic here if needed.
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFcbcbcb),
        drawer: buildDrawer(context),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text("Home", style: TextStyle(color: Colors.black, fontSize: 17)),
          actions: [
            GestureDetector(
              onTap: () {
                // Navigate to the search page
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: const Color(0xFFd4d181),
                  child: Icon(Icons.search, color: Colors.black, size: 15),
                ),
              ),
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
                              padding:
                                  const EdgeInsets.only(right: 130, bottom: 10),
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
                  children: productProvider.getFruitsProductDataList.map(
                    (FruitsProductData) {
                      return ProductWidget(
                        onTap: (ProductDetails productDetails) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductOverview(
                                  productDetails: productDetails),
                            ),
                          );
                        },
                        productImageURL: FruitsProductData.productImage,
                        productName: FruitsProductData.productName,
                        productPrice: FruitsProductData.productPrice,
                        productId: 'unique_id_1',
                      );
                    },
                  ).toList(),
                
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
