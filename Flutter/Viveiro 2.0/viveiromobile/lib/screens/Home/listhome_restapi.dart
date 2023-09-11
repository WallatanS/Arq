import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:viveiromobile/models/user_model.dart';
import 'package:viveiromobile/repositories/user_repository.dart';
import '../../commons/customlistitem.dart';

class ArvoreMatrixURL extends StatefulWidget {
  @override
  State<ArvoreMatrixURL> createState() => _ArvoreMatrixURLState();
}

class _ArvoreMatrixURLState extends State<ArvoreMatrixURL> {
  final _repository = UserRepository(Dio());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserModel>>(
      future: _repository.findAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          final plantas = snapshot.data;
          return ListView.builder(
              itemCount: plantas!.length,
              itemBuilder: (context, index) {
                final user = plantas[index];
                return Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: CustListItem(
                    title: user.nomeComum,
                    subtitle: user.nomeCientifico,
                    imageJSON: user.imagemMatriz,
                    id: user.id ?? 0,
                    backgroundColor: const Color.fromRGBO(186, 204, 179, 100),
                    opcao: 0,
                  ),
                );
              });
        }
        debugPrint('status code: ${snapshot.connectionState}');
        debugPrint('status code: ${snapshot.hasData}');
        debugPrint('status code: ${snapshot.error}');
        return Container();
      },
    );
  }
}
