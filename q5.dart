class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;
}

void main() {
  Camera c1 = Camera(1, "Canon", "Black", 45000);
  Camera c2 = Camera(2, "Nikon", "Red", 55000);
  Camera c3 = Camera(3, "Sony", "Silver", 65000);

  print("Camera Details:");
  print("${c1.id} - ${c1.brand} - ${c1.color} - \$${c1.price}");
  print("${c2.id} - ${c2.brand} - ${c2.color} - \$${c2.price}");
  print("${c3.id} - ${c3.brand} - ${c3.color} - \$${c3.price}");
}
