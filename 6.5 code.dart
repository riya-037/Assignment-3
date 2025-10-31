class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  //Getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  // Setters
  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

  void displayDetails() {
    print('Camera ID: $_id');
    print('Camera Brand: $_brand');
    print('Camera Color: $_color');
    print('Camera Price: \$${_price.toStringAsFixed(2)}');
    print('--------------------------------');
  }
}

void main() {
  Camera obj1 = Camera(1, 'Canon', 'Black', 75000);
  Camera obj2 = Camera(2, 'Nikon', 'Silver', 82000);
  Camera obj3 = Camera(3, 'Sony', 'Red', 70000);

  obj1.displayDetails();
  obj2.displayDetails();
  obj3.displayDetails();
}