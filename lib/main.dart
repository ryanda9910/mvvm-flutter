import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:quiz_app/view/login_view.dart';
import 'package:quiz_app/viewmodels/login_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => LoginViewModel(),
        child: const MaterialApp(
          home: LoginScreen(),
        )),
  );
}
