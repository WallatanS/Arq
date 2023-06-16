import 'package:flutter/material.dart';
import 'package:flutter_viveiro/commons/textfild.dart';
import 'package:flutter_viveiro/screens/cadastro/cadastroscreen.dart';

class AcervoScreeen extends StatefulWidget {
  final int opcao;

  const AcervoScreeen(this.opcao, {super.key});

  @override
  State<AcervoScreeen> createState() => _AcervoScreeenState();
}

class _AcervoScreeenState extends State<AcervoScreeen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(252, 253, 246, 1),
        appBar: AppBar(
          title: const Text('Acervo'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(40, 108, 42, 1),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Container(
              padding: const EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(
                  'assets/images/logo.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        body: IndexedStack(
          index: widget.opcao,
          children: const <Widget>[
            AcervoArvore(),
            AcervoSemente(),
            AcervoMuda(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CadastroScreeen(widget.opcao)),
            );
          },
          child: const Icon(Icons.edit),
        ),
        //bottomNavigationBar: BottonNavigatorBar(opcaoSelecionada),
      ),
    );
  }
}

class AcervoArvore extends StatelessWidget {
  const AcervoArvore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'assets/images/arvore.jpg',
                          fit: BoxFit.cover,
                        )),
                  )),
              const TextFieldSample('ID', '1'),
              const TextFieldSample('Estagio', 'semente'),
              const TextFieldSample('Especie', 'cad'),
              const TextFieldSample('Adubação', ''),
              const TextFieldSample('Altura da planta', ''),
              const TextFieldSample('Altura do fuste', ''),
              const TextFieldSample('Formacao da copa', ''),
              const TextFieldSample('formacao do tronco', ''),
              const TextFieldSample('municipio', ''),
              const TextFieldSample('Endereço', ''),
              const TextFieldSample('Latitude', ''),
              const TextFieldSample('Longitude', ''),
              const TextFieldSample('Altitude', ''),
              const TextFieldSample('tipo de solo', ''),
              const TextFieldSample('tipo de vegetação', ''),
              const TextFieldSample('nome do determinador', ''),
              const TextFieldSample('inst. determinador', ''),
              const TextFieldSample('CAP', ''),
              const TextFieldSample('Densidade de Ocorrencia', ''),
              const TextFieldSample('Area de coleta', ''),
              const TextFieldSample('Outras Especies associadas', ''),
              const TextFieldSample('Observações', ''),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ]),
    );
  }
}

class AcervoSemente extends StatelessWidget {
  const AcervoSemente({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'assets/images/semente1.webp',
                          fit: BoxFit.cover,
                        )),
                  )),
              //Árvore
              const TextFieldSample('ID', '1'),
              const TextFieldSample('Arvore Matrix', 'valor'),
              const TextFieldSample('Bancada', '0'),
              const TextFieldSample('Registro de doencas e pragas', '0'),
              const TextFieldSample('Observacao', ''),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ]),
    );
  }
}

class AcervoMuda extends StatelessWidget {
  const AcervoMuda({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8, left: 16, right: 16),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: [
              Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'assets/images/muda1.jpg',
                          fit: BoxFit.cover,
                        )),
                  )),
              //Árvore
              const TextFieldSample('ID', '1'),
              const TextFieldSample('Altura', 'm'),
              const TextFieldSample('Arvore Matrix', '1'),
              const TextFieldSample('Bancada', ''),
              const TextFieldSample('Data de Doação', ''),
              const TextFieldSample('Localização Atual', ''),
              const TextFieldSample('Numero de folhas', ''),
              const TextFieldSample('Observação', ''),
              const TextFieldSample('Registro de doencas e pragas', '0'),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ]),
    );
  }
}
