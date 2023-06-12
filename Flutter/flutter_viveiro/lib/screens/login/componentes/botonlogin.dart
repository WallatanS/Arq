import 'package:flutter/material.dart';
import 'package:flutter_viveiro/screens/Home/home.dart';

Widget botonLogin (BuildContext context){
  return SizedBox(
    height: 52,
    width: MediaQuery.of(context).size.width * .80,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 12),
      ),
    ),
  );
}