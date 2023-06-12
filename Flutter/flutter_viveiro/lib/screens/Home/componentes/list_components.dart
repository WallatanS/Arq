import 'package:flutter/material.dart';

Widget listComponents (BuildContext context){
  return Column(
    children: [
      Container(
        width: MediaQuery.of(context).size.width * .80,
        height: 88,
        color: Colors.blue,
      ),
    ],
  );
}