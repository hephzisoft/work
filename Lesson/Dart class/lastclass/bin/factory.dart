// void main(List<String> args) {
//   final admin = User.admin();
// }

// class User {
//   final String _firstName;
//   final String _lastName;

//   User(this._firstName, this._lastName);

//   String get fullName => '$_firstName $_lastName';
//   void signOut() {
//     print("Am signing out");
//   }
// }


// class Admin extends User {
//   final double specialAdminField;

//   Admin({
//     required  this.specialAdminField,
//     required String firstName,
//     required String lastName,
//   }):super(firstName, lastName);

//   @override
//   String get fullName => 'Admin ${super.fullName}';
// }



// factory User.admin(){
//   return Admin(specialAdminField: 3221, firstName: "Adebola", lastName: 'Kehinde');
// }