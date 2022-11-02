import 'dart:convert';

class PontosColeta {
  String? descricao;
  String? cep;
  String? numero;

  PontosColeta(
    this.descricao,
    this.cep,
    this.numero,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descricao': descricao,
      'cep': cep,
      'numero': numero,
    };
  }

  factory PontosColeta.fromMap(Map<String, dynamic> map) {
    return PontosColeta(
      map['descricao'] != null ? map['descricao'] as String : null,
      map['cep'] != null ? map['cep'] as String : null,
      map['numero'] != null ? map['numero'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PontosColeta.fromJson(String source) => PontosColeta.fromMap(json.decode(source) as Map<String, dynamic>);
}
