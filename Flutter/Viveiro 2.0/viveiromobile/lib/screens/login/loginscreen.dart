import 'package:flutter/material.dart';
import '../../commons/modelimage.dart';
import '../../commons/modeltextfield.dart';
import '../../commons/botonlogin.dart';
import '../../commons/switchvalidation.dart';

class ComponentsLogin extends StatelessWidget {
  const ComponentsLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        modelImage(context, 'assets/images/logo.jpg'),
        //textFormItem(context, 'E-mail','E-mail',false),
        //textFormItemsenha(context, 'Senha', true),
        //const SwitchValidation(false),
        const SizedBox(height: 16),
        botonLogin(context, 'Entrar'),
      ],
    );
  }
}
