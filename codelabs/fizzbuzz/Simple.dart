main() {
  String name = "Simple FizzBuzz";
  
  print(name);

  for (var i = 0; i < 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    }
  }
}