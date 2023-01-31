void main(List<String> args) {
  // First Method
  const myAge = 18;
  if (myAge >= 13 && myAge <= 19) {
    print("Teenager");
  } else {
    print("Not a teenager");
  }

// Second Method

  const answer = (myAge >= 13 && myAge <= 19) ? "Teenager" : "Not a teenager";
  print(answer);
}
