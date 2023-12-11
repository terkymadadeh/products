import 'package:flutter/material.dart';

import 'package:products/componet/model.dart';

// ignore: must_be_immutable
class detailes extends StatelessWidget {
  detailes({required this.product});
  Productmodels product;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'detailes   ',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 0,
        ),
        body: Column(
          children: [
            Center(child: Image.asset("images/shoes.jpg")),
            Text(
              " ${product.description}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              " ${product.price}" r" $",
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
