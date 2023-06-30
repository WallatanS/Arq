import 'package:flutter/material.dart';

Widget modelImage(BuildContext context, String url){
  return Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child: SizedBox(
      width: 150,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          url,
          fit: BoxFit.cover,
          // Image.asset("images/image.png", height: 100,),
        ),
      ),
    ),
  );
}