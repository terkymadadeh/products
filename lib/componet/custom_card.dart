import 'package:flutter/material.dart';
import 'package:products/Pages/details.dart';
import 'package:products/componet/model.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({required this.product});
  Productmodels product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return detailes(product: product);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.1),
                offset: Offset(10, 10),
                spreadRadius: 20,
              )
            ]),
            height: 200,
            width: 200,
            child: Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("${product.name}",
                      style: TextStyle(color: Colors.grey, fontSize: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${product.brand}",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.favorite, color: Colors.red),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            left: 25,
            child: Image.asset(
              "images/shoes.jpg",
              height: 90,
            ),
          ),
        ]),
      ),
    );
  }
}
