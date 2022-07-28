import '../model/product.dart';

void main(List<String> args) {
  ProductFactory factoryX = ProductXFactory();
  Product p01 = factoryX.createProduct();
  print(p01);

  ProductFactory factoryY = ProductYFactory();
  Product p02 = factoryY.createProduct();
  print(p02);
}

abstract class ProductFactory {
  Product createProduct();
}

// Concrete factory producing concrete products
class ProductXFactory implements ProductFactory {
  @override
  Product createProduct() {
    return ConcreteProductX("x");
  }
}

class ProductYFactory implements ProductFactory {
  @override
  Product createProduct() {
    return ConcreteProductY("y");
  }
}
