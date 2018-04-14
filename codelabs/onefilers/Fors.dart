import 'dart:math';

main() {
  for (var i = 0; i < 6; i++) {
    print("We have $i");
  }

  const max = 100;
  var rnd = new Random();

  var num = rnd.nextInt(max);
  var tries = 1;

  while(num != 33) {
    print("We have $num");
    num = rnd.nextInt(max);
    tries += 1;
  }

  print("It took $tries tries to get to 33!");
}