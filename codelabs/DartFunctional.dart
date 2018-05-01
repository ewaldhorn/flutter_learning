String scream(int length) {
  return "A${'a' * length}h!";
}

main() {
  var values = [1, 2, 3, 5, 10, 50];

  // imperative (non-functional)
  print("Imperative mode:");
  for (var length in values) {
    print(scream(length));
  }

  print("\nFunctional mode(basic):");
  values.map(scream).forEach(print);

  // skip first value, take next 3, others are skipped
  print("\nFunctional mode(advanced):");
  values.skip(1).take(3).map(scream).forEach(print);
}
