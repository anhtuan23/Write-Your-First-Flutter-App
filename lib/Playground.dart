//All identifiers are public by default
class Bicycle {
  int cadence;
  int speed;
  int gear;

  // This constructor has no body, which is valid in Dart
  // Using this in a constructor's parameter list is a handy shortcut
  // for assigning values to instance variables
  Bicycle(this.cadence, this.speed, this.gear);

  // The code above is equivalent to the following:
//  Bicycle(int cadence, int speed, int gear) {
//    this.cadence = cadence;
//    this.speed = speed;
//    this.gear = gear;
//  }
}

// Dart's main method is named main() or,
// To access to command-line arguments, main(List<String> args)
void main() {}
