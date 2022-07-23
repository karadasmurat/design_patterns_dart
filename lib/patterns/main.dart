import 'package:helloworld/patterns/singleton.dart';

void main() {
  var s01 = Singleton.instance;
  var s02 = Singleton.instance;

  // the class does not have unnamed constructor. ERR
  // var s03 = Singleton();

  //check whether two references are to the same object
  print(identical(s01, s02));

  print(s01.hashCode == s02.hashCode);
}
