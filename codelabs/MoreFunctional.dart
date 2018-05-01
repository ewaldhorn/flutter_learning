main() {
// Using an iterable to find odd numbers greater than 4 and adding 10 to them
  print([1, 2, 3, 4, 5, 6, 7, 8, 9]
      .where((x) => x > 4)
      .where((x) => x.isOdd)
      .map((x) => x + 10));

// Same as above, but without chained Where clauses
  print([1, 2, 3, 4, 5, 6, 7, 8, 9]
      .where((x) => x > 4 && x.isOdd)
      .map((x) => x + 10));
}
