import 'dart:io';

main() {

  // ask the user for some data
  print("Give us a number:");
  var input = stdin.readLineSync();
  print("We have $input of ${input.runtimeType}");

  var number = int.parse(input);
  print("We have $number of ${number.runtimeType}");

}