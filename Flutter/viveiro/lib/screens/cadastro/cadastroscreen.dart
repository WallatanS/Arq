import 'package:flutter/material.dart';
import 'package:flutter_viveiro/commons/botonlogin.dart';
import 'package:flutter_viveiro/commons/textfild.dart';

class CadastroScreeen extends StatefulWidget {
  final int opcao;

  const CadastroScreeen(this.opcao, {super.key});

  @override
  State<CadastroScreeen> createState() => _CadastroScreeenState();
}

class _CadastroScreeenState extends State<CadastroScreeen> {
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
        //floatingActionButton: const floatingactionbuttonWidget(),
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
        const SizedBox(height: 16),
        const Text(
          'Adicionar Foto', // Texto acima do campo TextFormField
          style: TextStyle(
            fontSize: 18,
            //fontWeight: FontWeight.bold,
            //textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            //
            // if (result != null) {
            //   String? filePath = result.files.single.path;
            //   // Faça o que você precisa com o caminho do arquivo selecionado
            //   print('Caminho do arquivo: $filePath');
            // }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(32),
            backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
          ),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: const [
              SizedBox(height: 16),
              TextFieldCad('ID', '1'),
              TextFieldCad('Estagio', 'semente'),
              TextFieldCad('Especie', 'cad'),
              TextFieldCad('Adubação', ''),
              TextFieldCad('Altura da planta', ''),
              TextFieldCad('Altura do fuste', ''),
              TextFieldCad('Formacao da copa', ''),
              TextFieldCad('formacao do tronco', ''),
              TextFieldCad('municipio', ''),
              TextFieldCad('Endereço', ''),
              TextFieldCad('Latitude', ''),
              TextFieldCad('Longitude', ''),
              TextFieldCad('Altitude', ''),
              TextFieldCad('tipo de solo', ''),
              TextFieldCad('tipo de vegetação', ''),
              TextFieldCad('nome do determinador', ''),
              TextFieldCad('inst. determinador', ''),
              TextFieldCad('CAP', ''),
              TextFieldCad('Densidade de Ocorrencia', ''),
              TextFieldCad('Area de coleta', ''),
              TextFieldCad('Outras Especies associadas', ''),
              TextFieldCad('Observações', ''),
              SizedBox(height: 40),
            ],
          ),
        ),
        const SizedBox(height: 16),
        botonLogin(context, 'Salvar'),
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
        const SizedBox(height: 16),
        const Text(
          'Adicionar Foto', // Texto acima do campo TextFormField
          style: TextStyle(
            fontSize: 18,
            //fontWeight: FontWeight.bold,
            //textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            //
            // if (result != null) {
            //   String? filePath = result.files.single.path;
            //   // Faça o que você precisa com o caminho do arquivo selecionado
            //   print('Caminho do arquivo: $filePath');
            // }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(32),
            backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
          ),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        //const SearchBarBody(),
        Expanded(
          child: ListView(
            children: const [
              TextFieldCad('ID', '1'),
              TextFieldCad('Arvore Matrix', 'valor'),
              TextFieldCad('Bancada', '0'),
              TextFieldCad('Registro de doencas e pragas', '0'),
              TextFieldCad('Observacao', ''),

              SizedBox(height: 40),
            ],
          ),
        ),
        const SizedBox(height: 16),
        botonLogin(context, 'Salvar'),
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
        const SizedBox(height: 16),
        const Text(
          'Adicionar Foto', // Texto acima do campo TextFormField
          style: TextStyle(
            fontSize: 18,
            //fontWeight: FontWeight.bold,
            //textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          onPressed: () async {
            // FilePickerResult? result = await FilePicker.platform.pickFiles();
            //
            // if (result != null) {
            //   String? filePath = result.files.single.path;
            //   // Faça o que você precisa com o caminho do arquivo selecionado
            //   print('Caminho do arquivo: $filePath');
            // }
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(32),
            backgroundColor: const Color.fromRGBO(83, 99, 79, 1),
          ),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView(
            children: const [
              TextFieldCad('ID', '1'),
              TextFieldCad('Altura', 'm'),
              TextFieldCad('Arvore Matrix', '1'),
              TextFieldCad('Bancada', ''),
              TextFieldCad('Data de Doação', ''),
              TextFieldCad('Localização Atual', ''),
              TextFieldCad('Numero de folhas', ''),
              TextFieldCad('Observação', ''),
              TextFieldCad('Registro de doencas e pragas', '0'),
              SizedBox(height: 40),
            ],
          ),
        ),
        const SizedBox(height: 16),
        botonLogin(context, 'Salvar'),
      ]),
    );
  }
}
