import 'package:flutter/material.dart';

class ReviewCart extends StatefulWidget {
  @override
  _ReviewCartState createState() => _ReviewCartState();
}

class ProductDetails {
  final String productImageURL;
  final String productName;
  final int productPrice;
  final String productId;

  ProductDetails({
    required this.productImageURL,
    required this.productName,
    required this.productPrice,
    required this.productId,
  });
}

class _ReviewCartState extends State<ReviewCart> {
  // Mock cart data (using the same ProductDetails class as your home screen)
  List<ProductDetails> cartItems = [
    ProductDetails(
      productImageURL:
          'https://agritech-north.ca/cdn/shop/products/Mint_Peppermint_8.jpg?v=1690483260',
      productName: 'Peppermint',
      productPrice: 50,
      productId: 'unique_id_1',
    ),
    ProductDetails(
      productImageURL:
          'https://cdn.britannica.com/99/143599-050-C3289491/Watermelon.jpg',
      productName: 'Watermelon',
      productPrice: 50,
      productId: 'unique_id_2',
    ),
    ProductDetails(
      productImageURL:
          'https://chaldn.com/_mpimage/sobuj-angur-green-grapes-12-gm-250-gm?src=https%3A%2F%2Feggyolk.chaldal.com%2Fapi%2FPicture%2FRaw%3FpictureId%3D134876&q=best&v=1',
      productName: 'Grapes',
      productPrice: 50,
      productId: 'unique_id_3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Review Cart'),
        backgroundColor: const Color(0xFFd6b738),
      ),
      body: Column(
        children: [
          for (var item in cartItems)
            ListTile(
              title: Row(
                children: [
                  Image.network(
                    item.productImageURL,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.productName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('\$ ${item.productPrice}'),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  // Remove the product from the cart
                  setState(() {
                    cartItems.remove(item);
                  });
                },
              ),
            ),
          Spacer(),
          Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle the submit action
                  // This can include navigating to the checkout page, making an order, etc.
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.7), // Set corner radius here
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ReviewCart(),
  ));
}
