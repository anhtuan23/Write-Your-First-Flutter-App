// https://codelabs.developers.google.com/codelabs/from-java-to-dart/#5

// ${'a' * length} evaluates to "the character 'a' repeated length times."
String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];

  // Imperative style
  for (var length in values) {
    print(scream(length));
  }

  // Functional Style
  values.map(scream).forEach(print);

  // skip(1)skips the first value, 1
  // take(3)gets the next 3 values—2, 3, and 5
  values.skip(1).take(3).map(scream).forEach(print);
}