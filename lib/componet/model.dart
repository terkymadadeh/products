class Productmodels {
  final int? id;
  final String? brand;
  final double? price;
  final String? description;

 

  Productmodels({
    this.id,
    this.brand,
    this.price,
    this.description,
 
   
  });

// "name": "test",
//             "description": "This is the description to product 1",
//             "price": 250,
//             "brand": "Brand 1"

  factory Productmodels.fromJson(jsonData) {
   // print(jsonData);
    return Productmodels(
      id: int.parse(jsonData['id'].toString()),
      brand : jsonData['titel'],
      price: jsonData['price'],
      description: jsonData['description'],
     
    );
  }
}

class reatingMOdel {
  final int? count;
  final String? rate;
  reatingMOdel({this.count, this.rate});
  factory reatingMOdel.fromJson(jsonData) {
    return reatingMOdel(
      count: jsonData['count'],
      rate: jsonData['rate'],
    );
  }
}
