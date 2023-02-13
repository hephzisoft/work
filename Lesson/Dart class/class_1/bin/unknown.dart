import 'dart:math';

void main(List<String> args) {
  checkNumber(3);
}

// bool isPrime(int number) {
//   var no = sqrt(number);
//   print(no);
//   if (number <= 1) return false;
//   for (int i = 2; i <= sqrt(number); i++) {
//     if (number % i == 0) return false;
//   }
//   return true;
// }

// ignore: todo
// TODO: write a function that will print out prime number e.g if 10 is the number it should print 1,2,3,5,7
void checkNumber(int number) {
  List primeNumber = [];
  if (number <= 1) {
    print("$number is not prime");
  } else {
    if (number > 1) {
      for (int i = 2; i <= number; i++) {
        if (number % i == 0) {
          print('Not a prime $i');
        } else {
          print('prime number $i');
        }
      }
    }
  }
}
