import 'package:flutter/material.dart';

Widget buildDrawer() {
  return Drawer(
    child: Container(
      color: Color(0xFFd6b738),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 40,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.red,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome, Guest"),
                  SizedBox(
                    height: 7,
                  ),
                  Container(
                    height: 25,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Sign in"),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(width: 2),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
          listTile(Icons.home_outlined, "Home"),
          listTile(Icons.shop_outlined, "Review Cart"),
          listTile(Icons.person_outlined, "My Profile"),
          listTile(Icons.notification_add_outlined, "Notifications"),
          listTile(Icons.star_outlined, "Rating & Reviews"),
          listTile(Icons.favorite_outline, "Wishlist"),
          listTile(Icons.copy_outlined, "Raise a Complaint"),
          listTile(Icons.format_quote_outlined, "FAQs"),
        ],
      ),
    ),
  );
}

Widget listTile(IconData icon, String title) {
  return ListTile(
    leading: Icon(icon, color: Colors.black, size: 32),
    title: Text(title, style: TextStyle(color: Colors.black, fontSize: 20)),
  );
}
