class Productmodels {
  final String? name;

  final String? brand;
  final dynamic price;
  final String? description;

//  "name": "test",
// "description": "This is the description to product 1",
// "price": 250,dynaimic
// "brand": "Brand 1"

  Productmodels({
    this.name,
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
      name: jsonData['name'],
      brand: jsonData['brand'],
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
