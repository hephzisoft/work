import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // Question 1
  print("Hephzibah");

  // Question 2
  // Question 2a
  print("Hello I am \"John Doe\" ");
  print('Hello I am "John Doe"');

  // Question 2b
  print("Hello I'am \"John Doe\" ");
  print('Hello I\'am "John Doe"');

  // Question 3
  const int age = 7;

  // Question 4

  stdout.write("Principal: ");
  int p = int.parse(stdin.readLineSync()!);
  stdout.write("Rate: ");
  int r = int.parse(stdin.readLineSync()!);
  stdout.write("Time(years): ");
  int t = int.parse(stdin.readLineSync()!);

  final formula = (p * t * r) / 100;
  print(formula);

  // Question 5
  stdout.write("Number to be squared: ");
  int square = int.parse(stdin.readLineSync()!);

  print(pow(square, 2));

  // Question 6
  stdout.write("First name: ");
  String? firstName = stdin.readLineSync();
  stdout.write("Last name: ");
  String? lastName = stdin.readLineSync();

  print("Your full name is $firstName $lastName");

  // Question 7

  int? dividend, divisor;

  stdout.write("Dividend: ");
  dividend = int.parse(stdin.readLineSync()!);
  stdout.write("Divisor: ");
  divisor = int.parse(stdin.readLineSync()!);

  print("Quotient: ${dividend~/divisor}");
  print("Divisor: ${dividend%divisor}");

// Question 8
  int a = 10;
  int b = 20;
  a = b + a;
  b = a - b;
  a = a - b;

  print("a= $a b=$b");

// Question 9
  String name = " Hello how are you doing today ";
  print(name.trim());

  // Question 10

  String amount = "10";
  print(int.parse(amount));

// Question 11

  int amounts = int.parse(stdin.readLineSync()!);
  int noOfPeople = int.parse(stdin.readLineSync()!);

  print(amounts / noOfPeople);
}
