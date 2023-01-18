import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  const myAge = 18;
  const maryAge = 30;
  const bothTeenager =
      (myAge >= 13 && myAge <= 19) && (maryAge >= 13 && maryAge <= 19);
  if (bothTeenager) {
    print("We are teenager");
  } else {
    print("We are not teenagers");
  }
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);
  print(age);
}
