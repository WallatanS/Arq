import 'package:flutter/material.dart';
import 'package:viveiro/commons/model_image-network.dart';
import 'package:viveiro/screens/login/components.dart';
import '../../commons/model_textfield.dart';


class components_login extends StatelessWidget {
  const components_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 32,
        left: 16,
        right: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          model_image_network(context, 'https://cdn.icon-icons.com/icons2/2415/PNG/512/mongodb_original_logo_icon_146424.png'),
          const SizedBox(height: 8),
          textFormItem(context, 'E-mail', false),
          const SizedBox(height: 8),
          textFormItemsenha(context, 'Senha', true),
          const SizedBox(height: 8),
          const SwitchLogin(false),
          const SizedBox(height: 8),
          BotonLogin(context),
        ],
      ),
    );
  }
}


