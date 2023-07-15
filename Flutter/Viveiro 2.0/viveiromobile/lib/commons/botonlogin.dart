import 'package:flutter/material.dart';
import 'package:viveiromobile/screens/home/homescreen.dart';

Widget botonLogin(BuildContext context, String name) {
  return SizedBox(
    height: 52,
    width: MediaQuery.of(context).size.width * .80,
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ConstrutorHome()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Cor de fundo do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24), // Borda arredondada
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
  );
}
