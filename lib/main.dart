import 'package:flutter/material.dart';
import 'package:flutter_api_crud/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 142, 189, 89),
              foregroundColor: Colors.white)),
      home: const UsersPage(),
    );
  }
}
