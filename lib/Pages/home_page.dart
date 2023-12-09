//  import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:products/componet/custom_card.dart';

import 'package:products/servies/get_All_product.dart';

//import 'package:qraankareem/componet/model.dart';
//import 'package:qraankareem/servies/get_All_product.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //  Colors.red,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.cartArrowDown,
                color: Colors.black,
              ),
            )
          ],
          title: const Center(
            child: Text(
              'New trends',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: FutureBuilder(
            future: getallproducts().GetAllProducts(),
            builder: (context, snapshot) {
              return GridView.builder(
                itemCount: 11,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomCard();
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                ),
              );
            }));
  }
}
