// Base class
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  void displayDetails() {
    print('Cat ID is: $id');
    print('Cat Name is: $name');
    print('Cat Color are: $color');
    print('Cat Sound like: $sound');
  }
}

void main() {
  Cat mycat = Cat(1, 'Kitty', 'black', 'Meow');
  mycat.displayDetails();
}