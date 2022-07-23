class SimpleFactory {
  //Objects to be created belong to the same Product (abstract class),
  //and the specific object type to be created is determined by the parameter.
  //We don't have to care about the specific logic of how production is produced
  static Product createProduct(ProductType pt) {
    switch (pt) {
      case ProductType.x:
        return ConcreteProductX();
      case ProductType.y:
        return ConcreteProductY();
    }
  }
}

enum ProductType { x, y }

// Dart does not support interface keyword.
// We can use abstract to define interfaces.
abstract class Product {
  void design();
}

class ConcreteProductX implements Product {
  @override
  void design() {
    print("Product X..");
  }
}

class ConcreteProductY implements Product {
  @override
  void design() {
    print("Product Y..");
  }
}

void main() {
  Product p01 = SimpleFactory.createProduct(ProductType.x);
  p01.design();

  Product p02 = SimpleFactory.createProduct(ProductType.y);
  p02.design();
}
