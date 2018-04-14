import 'dart:math';

main() {

  var rnd = new Random();

  var number = rnd.nextInt(20);

  print("Looking at $number");

  if (number % 2 == 0) {
    print("Even!");
  } else {
    print("Odd!");
  }

  switch (number) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      print("Number is 1..7!");
      break;
    default:
      print("Dunno, it's not 1..7!");
  }

  if (number % 2 == 0 && number > 10) {
    print("This is a number greater than 10 that's even.");
  } else if (number % 2 == 0 && number < 10) {
    print("This is an even number smaller than 10");
  } else {
    print("We don't care about this number!");
  }

}