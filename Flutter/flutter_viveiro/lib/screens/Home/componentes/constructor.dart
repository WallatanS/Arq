import 'package:flutter/material.dart';
import 'listhome.dart';

class ConstrutorHome extends StatefulWidget {
  const ConstrutorHome({super.key});

  @override
  State<ConstrutorHome> createState() => _ConstrutorHomeState();
}

class _ConstrutorHomeState extends State<ConstrutorHome> {
  bool isDrawerOpen = false;
  int _opcaoSelecionada = 0;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              toggleDrawer();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                // Implemente a ação do botão de logo aqui
              },
            ),
          ],
        ),
        drawer: buildDrawer,
        body: ListHome(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {},
            );
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromRGBO(40, 108, 42, 1),
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.white,
          currentIndex: _opcaoSelecionada,
          onTap: (_opcao) {
            //_opcaoSelecionada = _opcao;
            print('Clicou $_opcaoSelecionada');
            setState(() {
              _opcaoSelecionada = _opcao;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Árvore Matrix"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Semente"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Muda"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Planta"),
          ],
        ),
      ),
    );
  }

  Drawer get buildDrawer {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Seção 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Opção 1'),
            onTap: () {
              // Implemente a ação da opção 1 do menu aqui
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Opção 2'),
            onTap: () {
              // Implemente a ação da opção 2 do menu aqui
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Opção 3'),
            onTap: () {
              // Implemente a ação da opção 3 do menu aqui
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Opção 4'),
            onTap: () {
              // Implemente a ação da opção 4 do menu aqui
            },
          ),
          const Divider(),
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Seção 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Opção 5'),
            onTap: () {
              // Implemente a ação da opção 5 do menu aqui
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Opção 6'),
            onTap: () {
              // Implemente a ação da opção 6 do menu aqui
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Opção 7'),
            onTap: () {
              // Implemente a ação da opção 7 do menu aqui
            },
          ),
        ],
      ),
    );
  }
}
