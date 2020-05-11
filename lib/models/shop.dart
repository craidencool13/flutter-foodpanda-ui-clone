class Rating {
  final int totalUserRated;
  final double rating;

  Rating({this.totalUserRated, this.rating});
}

class Shop {
  int id;
  String name;
  String address;
  String image;
  bool isFeatured;
  bool isClosed;
  String openingTime;

  Shop(
      {this.id,
      this.name,
      this.address,
      this.image,
      this.isFeatured,
      this.isClosed,
      this.openingTime});
}
