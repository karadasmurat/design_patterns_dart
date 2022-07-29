abstract class Mammal {
  void eat() {
    print("I am eating.");
  }
}

// Interface for walk behavior
abstract class Walkable {
  void walk();
}

// Concrete implementation of a specific walk behavior
class CrawlingBehavior implements Walkable {
  @override
  void walk() {
    print("I can crawl.");
  }
}

// Concrete implementation of a specific walk behavior
class WalkOn2LegsBehavior implements Walkable {
  @override
  void walk() {
    print("I can walk on two legs.");
  }
}

class Human extends Mammal implements Walkable {
  Walkable walkBehavior;

  Human(this.walkBehavior);

  @override
  void walk() {
    walkBehavior.walk();
  }
}
