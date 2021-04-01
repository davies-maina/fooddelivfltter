class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.rating});
}

final foods = [
  Food(
      id: "1",
      name: "Nyama choma",
      imagePath: "assets/images/turkey.png",
      category: "Meat",
      price: 600.00,
      discount: 50.00,
      rating: 4.0),
  Food(
      id: "2",
      name: "Pizza",
      imagePath: "assets/images/pizza.png",
      category: "Fast food",
      price: 900.00,
      discount: 60.00,
      rating: 4.0),
  Food(
      id: "3",
      name: "Cup cake",
      imagePath: "assets/images/cupcake.png",
      category: "Breakfast",
      price: 200.00,
      discount: 30.00,
      rating: 4.0)
];
