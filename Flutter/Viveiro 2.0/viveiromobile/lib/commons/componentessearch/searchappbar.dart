import 'package:flutter/material.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({Key? key}) : super(key: key);

  @override
  _SearchBarAppState createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Pesquisar',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      onSubmitted: (value) {
        // Ação ao pressionar "Enter" ou "Concluir" no teclado
        performSearch(value);
      },
    );
  }

  void performSearch(String query) {
    // Lógica para realizar a pesquisa
    print('Pesquisando por: $query');
  }
}