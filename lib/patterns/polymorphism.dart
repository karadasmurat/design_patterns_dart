import '../model/mammal.dart';

void main(List<String> args) {
  //instance of a concrete implementation of an interface
  Walkable crawl = CrawlingBehavior();
  Walkable onLegs = WalkOn2LegsBehavior();

  Mammal mammal = Human(onLegs);
  mammal.eat();
  // ERR - method walk() isnot defined for the type Mammal
  // mammal.walk();

  Walkable walker = Human(onLegs);
  // ERR - method eat() isnot defined for the type Walkable
  // walker.eat();
  walker.walk();

  Human baby = Human(crawl);
  baby.eat(); // implemented in superclass
  baby.walk();
}
