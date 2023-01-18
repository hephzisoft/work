import 'dart:math';

void main(List<String> args) {
  // Question 1
  const double rating1 = 3.5;
  const double rating2 = 4.0;
  const double rating3 = 2.5;
  const double averageRating = (rating1 + rating2 + rating3) / 3;
  print(averageRating);

  // Question 2

  const double a = 2.0;
  const double b = 5.0;
  const double c = -3.0;

  double root1 = (-b + sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);
  double root2 = (-b - sqrt(pow(b, 2) - 4 * a * c)) / (2 * a);

  print(root1);
  print(root2);
}
