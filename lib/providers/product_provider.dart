import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> FruitsProductList = [];
  late ProductModel productModel;
  fatchFruitsproductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FruitsProduct").get();
    value.docs.forEach((element) {
      productModel = ProductModel(
          productName: element.get('productName'),
          productImage: element.get('productImage'),
          productPrice: element.get('productPrice'));
      newList.add(productModel);
    });
    FruitsProductList = newList;
    notifyListeners();
  }

List<ProductModel>  get getFruitsProductDataList {
    return FruitsProductList;
  }


}