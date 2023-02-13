// void main(List<String> args) {
//   final obj1 = const User(
//      firstName: 'Ola',lastName: 'Tolu',photoUrl: 'https://www.apple.com'); //instance of a class
//   print(obj1.name);

//   Example obj1 = Example(public, private);
// }

// class User {
//  final  String name;
//  final  String photoUrl;

//   const User({
//     required String firstName,
//     required String lastName,
//     required this.photoUrl,
//   }) : name = '$firstName $lastName';
// }

// class Example {
//   final String public;

//   final String _private;

//   /// Position

//   const Example(this.public, this.private);

//   /// Named paramter cannot start with underscore e.g _private
//   // const Example.namedConstructor({required this.public, required this.private});
// }

void main(List<String> args) {
  final student1 = const Student( courseId: "1002",name: "Damilare",);
  print(student1.courseId);
}

class Student {
  final  name;
  final  courseId;

 const  Student({this.name, this.courseId});
}
