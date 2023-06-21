import 'package:flutter/material.dart';

AppBar buildAppBar(String name) {
  return AppBar(
    title: Text(name),
    centerTitle: true,
    backgroundColor: const Color.fromRGBO(40, 108, 42, 1),
    actions: [
      Container(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Image.asset(
            'assets/images/logo.jpg',
            fit: BoxFit.cover,
          ),
        ),
      )
    ],
  );
}