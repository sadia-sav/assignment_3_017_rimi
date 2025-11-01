class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  List<House> houses = [
    House(1, "Green Villa", 500000),
    House(2, "Sunny House", 700000),
    House(3, "Dream Home", 900000),
  ];

  print("House Details:");
  for (var h in houses) {
    print("${h.id} - ${h.name} - \$${h.price}");
  }
}
