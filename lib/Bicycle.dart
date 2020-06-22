// https://codelabs.developers.google.com/codelabs/from-java-to-dart/#1

//All identifiers are public by default
class Bicycle {
  int cadence;
  // Dart enforces library privacy for identifiers prefixed with an underscore.
  int _speed = 0;
  int get speed => _speed;
  int gear;

  // This constructor has no body, which is valid in Dart
  // Using this in a constructor's parameter list is a handy shortcut
  // for assigning values to instance variables
  Bicycle(this.cadence, this.gear);

  // The code above is equivalent to the following:
//  Bicycle(int cadence, int speed, int gear) {
//    this.cadence = cadence;
//    this.speed = speed;
//    this.gear = gear;
//  }

  @override
  String toString() => 'Bicycle: $_speed mph';

  void applyBreak(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

// Dart's main method is named main() or,
// To access to command-line arguments, main(List<String> args)
void main() {
  // For unchanged value, use final instead of var
  var bike = Bicycle(2, 1);
  print(bike);
}
