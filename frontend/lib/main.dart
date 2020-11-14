import 'package:Inventorio/screens/employees_screen.dart';
import 'package:Inventorio/screens/loginScreen.dart';
import 'package:Inventorio/screens/profile_screen.dart';
import 'package:Inventorio/screens/transactions_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EmployeeScreen(),
    );
  }
}
