abstract class UserModel {
  String name;
  String lastName;

  UserModel(this.name, this.lastName);

  getFullName() {
    return "$name $lastName";
  }
}