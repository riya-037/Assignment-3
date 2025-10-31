
class House {
  int id;
  String name;
  double price;

  
  House(this.id, this.name, this.price);

  
  void display() {
    print('House ID: $id, Name: $name, Price: \$${price}');
  }
}

void main() {
  
  House h1 = House(1, 'Green Villa', 250000.0);
  House h2 = House(2, 'Blue Cottage', 180000.0);
  House h3 = House(3, 'Sunny Home', 300000.0);

  
  List<House> houses = [h1, h2, h3];

  
  for (var house in houses) {
    house.display();
  }
}
