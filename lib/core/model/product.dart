class Product {
  late int id;
  late String title, description, thumbnail;
  late double price;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
  }) {}

  Product.fromMap(Map<String,dynamic> product){
    this.id= product["id"];
    this.title= product["title"];
    this.description= product["description"];
    this.price= product["price"].toDouble();
    this.thumbnail= product["thumbnail"];
  }
}
