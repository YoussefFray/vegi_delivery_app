import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> FruitsProductList = [];
  fatchHerbsproductData() {
    FirebaseFirestore.instance.collection("").get();
    
  }
}
