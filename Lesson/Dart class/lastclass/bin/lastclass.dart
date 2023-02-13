void main(List<String> args) {}

class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';
}
