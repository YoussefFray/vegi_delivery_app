import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productImageURL;
  final String productName;
  final int productPrice;
  final Function onTap;
  final String productId;

  ProductWidget({
    required this.productImageURL,
    required this.productName,
    required this.productPrice,
    required this.onTap,
    required this.productId,
  });

 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       // print('Tapped ProductWidget');
        onTap(); // Call the onTap function provided by the parent
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 250,
        width: 160,
      decoration: BoxDecoration(
        color: Colors.white, // Set the background color to white
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              productImageURL,
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
                    productName,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$productPrice£ / 100g',
                    style: TextStyle(
                      color: Colors.black,
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
                              color: Colors.black,
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
                              color: Colors.black,
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
    ),
  );
  }
}
