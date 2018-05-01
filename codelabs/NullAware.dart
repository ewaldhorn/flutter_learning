String checkName(String name) {
  return name ?? "Joe Soap";
}

main() {
  print("\nNull aware Dart");

  var name = "Doofus";

  print("The name is ${checkName(name)}");

  // only assign a value if name is null, otherwise, do nothing
  // in kotlin, it would be name = name ?: newName
  name ??= "Any new name";
  print("The name is ${checkName(name)}");

  // make name null so that the null aware operator in checkName triggers
  name = null;
  print("Now name is ${checkName(name)}");

  var len = name?.length;

  print("The string is $len long");
}
