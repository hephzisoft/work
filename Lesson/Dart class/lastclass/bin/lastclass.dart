void main(List<String> args) {
  final admin = User.admin();
  // print(admin._firstName);
  


}

class User {
  final String _firstName;
  final String _lastName;

  User(this._firstName, this._lastName);

  String get fullName => '$_firstName $_lastName';
  void signOut() {
    print("Am signing out");
  }

  factory User.admin() {
    return Admin(
        specialAdminField: 3222, firstName: "ade", lastName: "Kehinde",isAdmin: true);
  }
}

class Admin extends User {
  final double specialAdminField;
   bool isAdmin;
  Admin({
    required this.specialAdminField,
    required String firstName,
    required this.isAdmin,
    required String lastName,
  }) : super(firstName, lastName);

  void verifyAdmin(bool isAdmin) {
   
    if (isAdmin) {
      print("Admin user ");
    } else {
      print("Get the fuck off");
    }
  }

  @override
  String get fulName => 'Admin ${super.fullName}';
}
// class Hephzibah