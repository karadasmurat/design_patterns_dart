void main() {
  var s01 = Singleton.instance;
  var s02 = Singleton.instance;

  // the class does not have unnamed constructor. ERR
  // var s03 = Singleton();

  //check whether two references are to the same object
  print(identical(s01, s02));

  print(s01.hashCode == s02.hashCode);
}

class Singleton {
  // private static instance, initialized by the private constructor
  static final Singleton _instance = Singleton._internal();

  // private named constructor
  Singleton._internal();

  //static getter, the global access point to the single instance
  static get instance => _instance;
}
