import 'package:flutter/material.dart';

import 'package:login_demo/screens/home_screen.dart';
import 'package:login_demo/screens/login_screen.dart';
import 'package:login_demo/screens/user_details_screen.dart';

void main() {
  runApp(const LoginDemo());
}

class LoginDemo extends StatelessWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/': (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        UserDetailsScreen.routeName: (context) => const UserDetailsScreen(),
      },
    );
  }
}
