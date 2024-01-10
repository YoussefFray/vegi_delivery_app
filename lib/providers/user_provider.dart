import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/models/user_model.dart';

class UserProvider with ChangeNotifier {
  late UserModel currentData = UserModel.empty();

  void addUserData({
    required User currentUser,
    required String userName,
    required String userImage,
    required String userEmail,
  }) async {
    await FirebaseFirestore.instance
        .collection("usersData")
        .doc(currentUser.uid)
        .set(
      {
        "userName": userName,
        "userEmail": userEmail,
        "userImage": userImage,
        "userUid": currentUser.uid,
      },
    );
  }

  Future<void> getUserData() async {
    try {
      DocumentSnapshot value = await FirebaseFirestore.instance
          .collection("usersData")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .get();
      if (value.exists) {
        UserModel userModel = UserModel(
          userEmail: value.get("userEmail"),
          userImage: value.get("userImage"),
          userName: value.get("userName"),
          userUid: value.get("userUid"),
        );
        currentData = userModel;
        notifyListeners();
      }
    } catch (error) {
      print("Error fetching user data: $error");
    }
  }

  UserModel get currentUserData {
    return currentData;
  }
}
