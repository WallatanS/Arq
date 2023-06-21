import 'package:flutter/material.dart';
import 'package:flutter_viveiro/commons/componentessearch/searchbody.dart';
import '../../commons/customlistitem.dart';

class ArvoreMatrix extends StatefulWidget {
  final int opcao;
  const ArvoreMatrix(this.opcao, {super.key});

  @override
  State<ArvoreMatrix> createState() => _ArvoreMatrixState();
}

class _ArvoreMatrixState extends State<ArvoreMatrix> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(child: ListView(
          children:  [
            CustomListItem(
              title: 'Arvore 1',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/arvore.jpg',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Arvore 2',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/arvore1.jpg',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Arvore 3',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/arvore2.webp',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            const SizedBox(height: 40),
          ],
        ),)
      ]),
    );
  }
}

class Semente extends StatefulWidget {
  final int opcao;
  const Semente(this.opcao, {super.key});

  @override
  State<Semente> createState() => _SementeState();
}

class _SementeState extends State<Semente> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(child: ListView(
          children:  [
            CustomListItem(
              title: 'Semente 1',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/semente1.webp',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Semente 2',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/semente2.webp',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Arvore 3',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/semente3.webp',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            const SizedBox(height: 40),
          ],
        ),)
      ]),
    );
  }
}

class Muda extends StatefulWidget {
  final int opcao;
  const Muda(this.opcao, {super.key});

  @override
  State<Muda> createState() => _MudaState();
}

class _MudaState extends State<Muda> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        //const SearchBarBody(),
        Expanded(child: ListView(
          children:  [
            CustomListItem(
              title: 'Muda 1',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/muda1.jpg',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Muda 2',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/muda2.jpeg',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            CustomListItem(
              title: 'Muda 3',
              subtitle: 'Texto informativo',
              imageUrl: 'assets/images/muda3.jpg',
              backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
              opcao: widget.opcao,
            ),
            const SizedBox(height: 40),
          ],
        ),)
      ]),
    );
  }
}

