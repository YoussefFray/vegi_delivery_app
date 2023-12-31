import 'package:flutter/material.dart';
import 'package:food_app/screens/home/product_widget.dart';

class ProductOverview extends StatefulWidget {
  final ProductDetails productDetails;

  const ProductOverview({Key? key, required this.productDetails})
      : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        title: Text(
          "Product Overview",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Column(
        children: [
          Image.network(widget.productDetails.productImageURL),
          Text(widget.productDetails.productName),
          Text("${widget.productDetails.productPrice} £"),
          // Display other product details as needed
        ],
      ),
    );
  }
}
