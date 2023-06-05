import 'package:flutter/material.dart';

Widget textFormItem(BuildContext context, String name, bool obscure) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * .80,
    child: TextFormField(
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: name,
        labelText: name,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(114, 121, 111, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(114, 121, 111, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 1.5,
            color: Color.fromRGBO(114, 121, 111, 1),
          ),
        ),
      ),
    ),
  );
}

Widget textFormItemsenha(BuildContext context, String name, bool obscure) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * .80,
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
      obscureText: obscure,
      decoration: InputDecoration(
        //labelText: ,
        hintText: name,
        labelText: name,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Color.fromRGBO(114, 121, 111, 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromRGBO(114, 121, 111, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(
            width: 1.5,
            color: Color.fromRGBO(114, 121, 111, 1),
          ),
        ),
      ),
    ),
  );
}
