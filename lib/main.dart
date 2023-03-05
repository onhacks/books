import 'package:books/components/borrow_request_pop-up.dart';
import 'package:books/pages/addnewbook_page.dart';
import 'package:books/pages/home_page.dart';
import 'package:books/pages/login_page.dart';
import 'package:books/pages/my_books_page.dart';
import 'package:books/pages/signup_screen.dart';
import 'package:books/pages/user_page.dart';
import 'package:books/pages/view_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}

