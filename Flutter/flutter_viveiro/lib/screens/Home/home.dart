import 'package:flutter/material.dart';

import '../../commons/componentes_search/search_body.dart';
import 'list_components.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
        ),
        body: ListView(
          children: [
            SearchBarBody(),
            const SizedBox(height: 8),
            list_components(context),
            const SizedBox(height: 8),
            list_components(context),
          ],
        ),
      ),
    );
  }
}


