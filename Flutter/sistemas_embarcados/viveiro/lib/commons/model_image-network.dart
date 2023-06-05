import 'package:flutter/cupertino.dart';

Widget model_image_network(BuildContext context, String url){
  return SizedBox(
    width: 150,
    height: 150,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        // Image.asset("images/image.png", height: 100,),
      ),
    ),
  );
}