void main() {
  final perimeter = Rectange();
  (perimeter.perimeter());
}
// create a rectangle class that will have default parameter of lenght and breadth of 10cm each and create a method that will calculate the lenght and the breadth

class Rectange {
  int length;
  int breadth;

  Rectange({this.length = 10, this.breadth = 10});

  void perimeter() {
    print(2 * (length + breadth));
  }
}
