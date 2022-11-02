
import 'dart:convert';
import 'package:flutter_front_aps/screens/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;
import '../../model/Residuos.dart';

class HttpRepository implements IUserRepository{
    
  @override
  Future<List<Residuos?>> findModel() async {
    
    const url = "https://viacep.com.br/ws/12220281/json/";

    final response = await http.get(Uri.parse(url));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<Residuos?>((resp)=>Residuos.fromMap(resp)).toList();
  }
  
}