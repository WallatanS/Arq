import 'package:flutter/material.dart';
import '../../../commons/componentes_search/search_body.dart';
import 'customlistitem.dart';

Padding ListHome() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ListView(
      children: const [
        SearchBarBody(),
        CustomListItem(
          title: 'Arvore 1',
          subtitle: 'Texto informativo',
          imageUrl: 'assets/images/arvore.jpg',
          backgroundColor: Color.fromRGBO(186, 204, 179, 100),
        ),
        CustomListItem(
          title: 'Arvore 2',
          subtitle: 'Texto informativo',
          imageUrl: 'assets/images/arvore1.jpg',
          backgroundColor: Color.fromRGBO(186, 204, 179, 100),
        ),
        CustomListItem(
          title: 'Arvore 3',
          subtitle: 'Texto informativo',
          imageUrl: 'assets/images/arvore2.webp',
          backgroundColor: Color.fromRGBO(186, 204, 179, 100),
        ),
        SizedBox(height: 40),
      ],
    ),
  );
}