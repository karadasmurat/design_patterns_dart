abstract class Shape {
  String color;

  Shape(this.color);

  area();
  perimeter();
}

class Circle extends Shape {
  num radius;
  Circle(super.color, {required this.radius});

  @override
  area() {
    // TODO: implement area
    throw UnimplementedError();
  }

  @override
  perimeter() {
    // TODO: implement perimeter
    throw UnimplementedError();
  }

  @override
  String toString() => "A $color Circle with radius $radius";
}

class Rectangle extends Shape {
  num width;
  num height;

  Rectangle(super.color, {required this.height, required this.width});

  @override
  area() {
    // TODO: implement area
    throw UnimplementedError();
  }

  @override
  perimeter() {
    // TODO: implement perimeter
    throw UnimplementedError();
  }

  @override
  String toString() =>
      "A $color Rectangle with width: $width and height: $height";
}
