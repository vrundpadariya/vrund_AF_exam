class Auction {
  String name;
  String category;
  int price;

  Auction({required this.name, required this.category, required this.price});

  factory Auction.fromdb({required Map data}) {
    return Auction(
        name: data['name'], category: data['category'], price: data['price']);
  }
}
