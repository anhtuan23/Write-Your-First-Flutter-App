import 'dart:math';

// Create a top-level Factory
Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t crate $type.';
}

abstract class Shape {
  // Create a Factory Constructor
  factory Shape(String type){
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type';
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
  // Use top-level Factory
  final circle = shapeFactory('circle');
  final square = shapeFactory('square');

  // Use a Factory Constructor
  final circle = Shape('circle');
  final square = Shape('square');

  print(circle.area);
  print(square.area);
}