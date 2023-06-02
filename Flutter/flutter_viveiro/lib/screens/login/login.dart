import 'package:flutter/material.dart';

import 'constructor.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: components_login(),
        ),
      ),
    );
  }
}
