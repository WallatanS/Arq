import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/screens/acervo/find_id_screen.dart';

class JsonToPngConverter extends StatelessWidget {
  final String jsonImage;

  JsonToPngConverter({required this.jsonImage});

  Uint8List convertJsonToPng(String json) {
    final imageData = jsonDecode(json)['image'];
    final bytes = base64Decode(imageData);
    return bytes;
  }

  @override
  Widget build(BuildContext context) {
    final pngImage = convertJsonToPng(jsonImage);

    return new Image.memory(pngImage);
  }
}

class CustListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageJSON;
  final Color backgroundColor;
  final int opcao;
  final int id;

  const CustListItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageJSON,
    required this.backgroundColor,
    required this.opcao,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: ListTile(
        leading: SizedBox(
          width: 50,
          height: 50,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child:
                  //JsonToPngConverter(jsonImage: 'data:image/png;base6$imageJSON'),),
                  Image.asset('assets/images/arvore.jpg')),
        ),
        title: Text(
          title,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
              // fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AcervoScreeen(opcao, id)),
          );
        },
      ),
    );
  }
}
