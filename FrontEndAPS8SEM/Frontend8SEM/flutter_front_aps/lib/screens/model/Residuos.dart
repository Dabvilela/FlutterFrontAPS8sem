// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_front_aps/screens/model/pontosColeta.dart';

class Residuos {
  
  String? id;
  String? tipoNome;
  String? nome;
  List<PontosColeta> pontosColetas;

  Residuos({
    this.id,
    this.tipoNome,
    this.nome,
    required this.pontosColetas,
  });  
 

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'tipoNome': tipoNome,
      'nome': nome,
      'pontosColetas': pontosColetas.map((x) => x.toMap()).toList(),
    };
  }

  factory Residuos.fromMap(Map<String, dynamic> map) {
    return Residuos(
      id: map['id'] != null ? map['id'] as String : null,
      tipoNome: map['tipoNome'] != null ? map['tipoNome'] as String : null,
      nome: map['nome'] != null ? map['nome'] as String : null,
      pontosColetas: List<PontosColeta>.from((map['pontosColetas'] as List<int>).map<PontosColeta>((x) => PontosColeta.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory Residuos.fromJson(String source) => Residuos.fromMap(json.decode(source) as Map<String, dynamic>);
}

