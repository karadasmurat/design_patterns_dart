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

void main() {
  Product p01 = SimpleFactory.createProduct(ProductType.x);
  p01.design();

  Product p02 = SimpleFactory.createProduct(ProductType.y);
  p02.design();
}
