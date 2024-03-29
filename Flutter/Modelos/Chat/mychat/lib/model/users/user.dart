import 'package:cloud_firestore/cloud_firestore.dart';

class UserLocal {
  String? id, name, email, socialMedia, password, confirmPassword;
  UserLocal(
      {this.id, this.name, this.email, this.password, this.confirmPassword});
  //Método Utilizado para armazenar dados do documento
  //obtido no Firebase
  UserLocal.fromDocument(DocumentSnapshot doc) {
    id = doc.id;
    name = doc.get('name') as String;
    email = doc.get('email') as String;
    socialMedia = doc.get('socialMedia') as String;
  }

  //Método utilizado para converter as informações para
  //formato JSON, que é o formato reconhecido pelo Firebase
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'socialMedia': socialMedia,
    };
  }
}
