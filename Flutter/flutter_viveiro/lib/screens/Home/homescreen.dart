import 'package:flutter/material.dart';
import 'package:flutter_viveiro/commons/scanfoldcompoentestelas/buildAppBar.dart';
import 'package:flutter_viveiro/commons/scanfoldcompoentestelas/drawercomponete.dart';
import 'package:flutter_viveiro/commons/scanfoldcompoentestelas/floatingactionbuttonwidget.dart';
//import '../../exemples/listhomemodel.dart';
import 'listhome.dart';

class ConstrutorHome extends StatefulWidget {
  const ConstrutorHome({super.key});

  @override
  State<ConstrutorHome> createState() => _ConstrutorHomeState();
}

class _ConstrutorHomeState extends State<ConstrutorHome> {
  int opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: buildAppBar('Home'),
        bottomNavigationBar: buildBottomNavigationBar(),
        body: IndexedStack(
          index: opcaoSelecionada,
          children:  <Widget> [
            ArvoreMatrix(opcaoSelecionada),
            Semente(opcaoSelecionada),
            Muda(opcaoSelecionada),
          ],
        ),
        drawer: Builder(
          builder: (context) => Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(241, 246, 236, 1),
                  ),
                  currentAccountPicture: Image.asset('assets/images/logo.jpg'),
                  accountName: const Text(
                    'Viveiro',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  accountEmail: const Text(
                    'viveiro@ifmt.edu.br',
                    style: TextStyle(color: Colors.black45, fontSize: 16),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.eco),
                  title: const Text('Árvore Matrix'),
                  onTap: () {
                    setState(() {
                      opcaoSelecionada = 0;
                      Navigator.pop(context);
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.eco),
                  title: const Text('Semente'),
                  onTap: () {
                    setState(() {
                      opcaoSelecionada = 1;
                      Navigator.pop(context);
                    });
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.eco),
                  title: const Text('Muda'),
                  onTap: () {
                    setState(() {
                      opcaoSelecionada = 2;
                      Navigator.pop(context);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: floatingactionbuttonWidget(opcaoSelecionada),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(40, 108, 42, 1),
        fixedColor: const Color.fromRGBO(144, 216, 137, 1),
        unselectedItemColor: Colors.white54,
        currentIndex: opcaoSelecionada,
        onTap: (opcao) {
          setState(() {
            opcaoSelecionada = opcao;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: "Árvore Matrix"),
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: "Semente"),
          BottomNavigationBarItem(icon: Icon(Icons.eco), label: "Muda"),
        ],
      );
  }
}
