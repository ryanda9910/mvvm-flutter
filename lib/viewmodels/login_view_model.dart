import 'package:flutter/material.dart';
import 'package:quiz_app/models/user_model.dart';

class LoginViewModel extends ChangeNotifier {
  final UserModel model = UserModel();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  void login(BuildContext context) {
    isLoading = true;
    notifyListeners();

    final username = usernameController.text;
    final password = passwordController.text;

    final success = model.authenticate(username, password);

    isLoading = false;
    notifyListeners();

    if (success) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Selamat Datang $username'),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const  AlertDialog(
            backgroundColor: Colors.red,
            title: Text('Login Gagal', style: TextStyle(color: Colors.white)),
            content: Text(
              'User name atau password salah.',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      );
    }
  }
}

