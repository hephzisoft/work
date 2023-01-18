import 'dart:io';

void main(List<String> args) {
  // String name = "12";
  // print(name.runtimeType);

  // int yellow = int.parse(name);
  // print(yellow);
  // /// Hello

  // int a = 5;
  // int b = 10;

  // int uniaryMinus = -a;
  // print(uniaryMinus);

  String name = "oladokun hephzibah oladokun ite";
  print(
      "${name[0].toUpperCase()}${name.substring(1, 8)} ${name[9].toUpperCase()}${name.substring(10, 18)} ${name[19].toUpperCase()}${name.substring(20, 27)} ${name[28].toUpperCase()}${name.substring(29, 31)}");

  // ASSERT

  const bool married = false;
  assert(married, "Programmers are not allowed to get married ");

  // ENUMERATION

  

}
