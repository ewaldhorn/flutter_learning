String scream(int length) {
  return "A${'a' * length}h!";
}

main() {
  var values = [1,2,3,5,10,50];
  values.map(scream).forEach(print);
}