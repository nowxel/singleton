import 'dart:math';
void main() {
  final Square square = Square(slice: 10);
  print(square.side);
  printArea(square);
  final Shape circle = Circle(radius: 5);
  printArea(circle);
}

void printArea(Shape shape){
  print(shape.area());
}

abstract class Shape{
  double area();
}

class Square implements Shape{
  double _side;

  double get side => _side;

  Square({double slice}) {
    this._side = slice;
  }

  double area() {
    return _side * _side;
  }
}

class Circle implements Shape {
  final double radius;

  Circle({this.radius});

  @override
  double area() {
    return radius * radius * pi;
  }
}