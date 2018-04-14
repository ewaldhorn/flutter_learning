import 'dart:math';

abstract class Shape {
  factory Shape(String type, num arg) {
    if (type == 'circle') return new Circle(arg);
    if (type == 'square') return new Square(arg);
    throw 'Can\'t create $type with value $arg';
  }

  num get area;
}

class Circle implements Shape {
  final num radius;
  
  Circle(this.radius);

  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  num get area => pow(side, 2);
}

class CircleMock implements Circle {
  num area;
  num radius;
}

main() {
  var circle = new Shape('circle', 2);
  var square = new Shape('square', 3);

  print(circle.area);
  print(square.area);
}