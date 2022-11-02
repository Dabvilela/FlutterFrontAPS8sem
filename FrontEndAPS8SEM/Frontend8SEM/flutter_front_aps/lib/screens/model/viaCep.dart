// import 'dart:convert';

// class ViaCep {
//   String? cep; 
//   String? logradouro;
//   String? complemento;
//   String? localidade;
//   String? uf;
//   String? ibge;
//   String? gia;
//   String? ddd;
//   String? siafi;

//   ViaCep(
//     {
//       this.cep,
//       this.logradouro,
//       this.complemento,
//       this.localidade,
//       this.uf,
//       this.ibge,
//       this.gia,
//       this.ddd,
//       this.siafi,
//     }
//   );  

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'cep': cep,
//       'logradouro': logradouro,
//       'complemento': complemento,
//       'localidade': localidade,
//       'uf': uf,
//       'ibge': ibge,
//       'gia': gia,
//       'ddd': ddd,
//       'siafi': siafi,
//     };
//   }

//   factory ViaCep.fromMap(Map<String, dynamic> map) {
//     return ViaCep(
//       map['cep'] != null ? map['cep'] as String : null,
//       map['logradouro'] != null ? map['logradouro'] as String : null,
//       map['complemento'] != null ? map['complemento'] as String : null,
//       map['localidade'] != null ? map['localidade'] as String : null,
//       map['uf'] != null ? map['uf'] as String : null,
//       map['ibge'] != null ? map['ibge'] as String : null,
//       map['gia'] != null ? map['gia'] as String : null,
//       map['ddd'] != null ? map['ddd'] as String : null,
//       map['siafi'] != null ? map['siafi'] as String : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory ViaCep.fromJson(String source) => ViaCep.fromMap(json.decode(source) as Map<String, dynamic>);
// }

