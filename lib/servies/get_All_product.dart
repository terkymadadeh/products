import 'dart:convert';

import 'package:products/componet/model.dart';

import 'package:http/http.dart' as http;

//  var res = await CallApi().postData(data, 'register');
// var encodeFirst = json.encode(res.body);
// var data = json.decode(encodeFirst);
class getallproducts {
  Future<List<Productmodels>> GetAllProducts() async {
    {
      final response =
          await http.get(Uri.parse('http://10.0.2.2:8000/api/show'));

      var data = jsonDecode(response.body);
      //http://127.0.0.1:8000/api/show
      List<Productmodels> productmodel = [];
      for (int i = 0; i < data.length; i++) {
        productmodel.add(
          Productmodels.fromJson(data[i]),
        );
       // print(productmodel[i]);
      }
      return productmodel;
    }
  }
}
