import 'package:flutter/material.dart';
import 'package:viveiromobile/screens/home/home_screen.dart';

class drawerwidget extends StatelessWidget {
  const drawerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // const DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Color.fromRGBO(241, 246, 236, 1),
            //   ),
            //   child: Text(
            //     'Menu',
            //     style: const TextStyle(fontSize: 24),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(241, 246, 236, 1),
              ),
              //arrowColor: Color.fromRGBO(241, 246, 236, 1),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConstrutorHome()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.eco),
              title: const Text('Semente'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.eco),
              title: const Text('Muda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
