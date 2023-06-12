import 'package:flutter/material.dart';
import '../../../commons/modelimage.dart';
import '../../../commons/modeltextfield.dart';
import 'botonlogin.dart';
import 'switchvalidation.dart';

class ComponentsLogin extends StatelessWidget {
  const ComponentsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        modelImage(context, 'assets/images/logo.jpg'),
        textFormItem(context, 'E-mail', false),
        textFormItemsenha(context, 'Senha', true),
        const SwitchValidation(false),
        botonLogin(context),
      ],
    );
  }
}
