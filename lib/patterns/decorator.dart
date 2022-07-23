import 'dart:math';

void main(List<String> args) {
  //create concrete base component
  Beverage beverage = HouseBlend();
  print(beverage);

  var soymilkAddOn = SoyMilk(component: beverage);
  print(soymilkAddOn.cost());
}

abstract class Beverage {
  String description = "Base component";

  num cost(); // Abstract method.
}

// Concrete implementation we would like to decorate.
class HouseBlend extends Beverage {

  @override
  num cost() {
    return 1;
  }

  // Unnamed Constructor
  HouseBlend(String desc): super.description = desc;

  @override
  String toString() {
    return "${super.toString()}, $description";
  }
}

// Decorator base class
abstract class BeverageDecorator extends Beverage {}

//Concrete implementation of Decorator
class SoyMilk extends BeverageDecorator {
  Beverage component;

  // Unnamed Constructor
  SoyMilk({required this.component});

  @override
  num cost() {
    return 2 + component.cost();
  }
}
