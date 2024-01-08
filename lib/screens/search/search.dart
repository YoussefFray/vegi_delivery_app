import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';
import 'package:food_app/providers/product_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final ProductProvider productProvider = ProductProvider();
  final TextEditingController searchController = TextEditingController();
  List<ProductModel> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    productProvider.fatchFruitsproductData();
  }

  void searchProducts() {
    setState(() {
      filteredProducts = productProvider.getFruitsProductDataList
          .where((product) =>
              product.productName.toLowerCase().contains(searchController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                searchProducts();
              },
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                ProductModel product = filteredProducts[index];
                return ListTile(
                  title: Text(product.productName),
                  subtitle: Text('\$ ${product.productPrice}'),
                  leading: Image.network(product.productImage),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
