import 'dart:io';

void main() {
  // String name; // Initialize
  // name = "babs";
  // name = 9;
  // print(name);

  // var name ;
  // name = "bola";
  // name = 9;
  // print(name);

  stdout.write("Enter your age: ");
  int? age = int.parse(stdin.readLineSync()!);
  print("Age: $age");
}
