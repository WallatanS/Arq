import 'package:flutter/material.dart';

import 'componentes/constructor.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: ComponentsLogin(),
        ),
      ),
    );
  }
}
