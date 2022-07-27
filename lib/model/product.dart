enum ProductType { x, y }

// Dart does not support interface keyword.
// We can use abstract to define interfaces.
abstract class Product {
  void design();
}

class ConcreteProductX implements Product {
  @override
  void design() {
    print("Product X.");
  }
}

class ConcreteProductY implements Product {
  @override
  void design() {
    print("Product Y.");
  }
}
