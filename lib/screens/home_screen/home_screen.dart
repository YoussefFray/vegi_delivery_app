import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //singleProduct function to create a single product
  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 250,
      width: 160,
      decoration: BoxDecoration(
        color: const Color(0xffd9dad9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              'https://e7.pngegg.com/pngimages/466/409/png-clipart-peppermint-herbal-tea-basil-fresh-green-tea-leaves-leaf-herbal-tea.png',
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Peppermint',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '50£ / 100g',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "50 grams",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text("1",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Icon(Icons.add,
                                  size: 15, color: Color(0xffd0b84c)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.black, size: 32),
      title: Text(title, style: TextStyle(color: Colors.black, fontSize: 20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFcbcbcb),
      //sidebar menu
      drawer: Drawer(
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
                      Text("welcome guest"),
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
              listTile(Icons.favorite_outline, "wishlist"),
              listTile(Icons.copy_outlined, "Raise a complaint"),
              listTile(Icons.format_quote_outlined, "FAQs"),
            ],
          ),
        ),
      ),
      //body
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title:
            Text("Home", style: TextStyle(color: Colors.black, fontSize: 17)),
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
                  // Add your additional widgets here
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('herbs seasonings'),
                  Text('see all', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
