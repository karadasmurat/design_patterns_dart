import 'package:design_patterns_dart/model/shape.dart';

void main(List<String> args) {
  ShapeFactory cf = CircleFactory();
  Shape c = cf.createShape();
  print(c);

  ShapeFactory rf = RectangleFactory();
  Shape r = rf.createShape();
  print(r);
}

abstract class ShapeFactory {
  Shape createShape();
}

//concrete factory creating concrete classes
class CircleFactory implements ShapeFactory {
  //TODO how can we provide these parameters at runtime?
  @override
  Shape createShape() {
    return Circle("red", radius: 1);
  }
}

class RectangleFactory implements ShapeFactory {
  //TODO how can we provide these parameters at runtime?
  @override
  Shape createShape() {
    return Rectangle("blue", height: 10, width: 20);
  }
}
