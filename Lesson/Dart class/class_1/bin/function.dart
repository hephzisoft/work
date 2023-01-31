void main(List<String> args) {
  loop();
}

void helloPersonAndPet(String person, String pet) {
  print("Hello, $person, and your furry friend, $pet!");
}

void loop([int number = 10]) {
  for (int i = 1; number >= i; number--) {
    print(number);
  }
}
