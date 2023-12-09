import 'package:flutter/material.dart';
import 'package:products/componet/model.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({this.product});
  Productmodels? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        clipBehavior: Clip.none, children: [
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
                Text("shose",
                    style: TextStyle(color: Colors.grey, fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "shose",
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
          bottom: 100,
          left: 25,
          child: Image.asset(
            "images/shoes.jpg",
            height: 90,
          ),
        ),
      ]),
    );
  }
}
