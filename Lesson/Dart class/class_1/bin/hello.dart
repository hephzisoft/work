void main() {
  multiply(10);
}

void multiply(int number) {
  int end = 12;

  for (int i = 1; i <= end; i++) {
    int answer = number * i;
    print(answer);
  }
}
