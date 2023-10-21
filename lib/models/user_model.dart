class UserModel {
  final String correctUsername = "admin";
  final String correctPassword = "upj";

  bool authenticate(String username, String password) {
    return username == correctUsername && password == correctPassword;
  }
}
