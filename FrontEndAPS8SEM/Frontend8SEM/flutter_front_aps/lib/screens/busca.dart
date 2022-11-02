import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/Residuos.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final dropValueTipos = ValueNotifier('');
  final dropOpcaoTipos = ['Eletronicos', ''];//array de tipos

  final dropValueResiduos = ValueNotifier('');
  final droOpcaoResiduos = ['Pilhas', 'Entulhos','Lixo Tóxico', 'Reciclavel'];// array de residuos

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Onde Descarto"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        
        color: Colors.greenAccent,

        child: ListView(
          
          children:[             
            
            Row(

              children: [

                //Ajustar para segundo dropdownlist
                ValueListenableBuilder(
                  valueListenable: dropValueTipos, builder: (BuildContext context, String value, _){
                    return dropDownList(value, dropValueTipos, dropOpcaoTipos, 'Tipos');
                  }               
                ),

                const Spacer(),

                ValueListenableBuilder(
                  valueListenable: dropValueResiduos, builder: (BuildContext context, String value, _){
                    return dropDownList(value, dropValueResiduos, droOpcaoResiduos, 'Residuos');
                  }               
                ),

                const Spacer(),

                FloatingActionButton(

                  backgroundColor: Colors.green,
                  child: const Icon(Icons.search),
                  onPressed: () async {
                    //criar funçao para consumir as API
                    
                    final resp = await findModel();
                  },

                )

              ],
            ),

          ],
                       
        )

      ),      
      
    );
  }  

  SizedBox dropDownList(String value, ValueNotifier<String> dropValue, List<String> dropOpcao, String hintText ) {
    
    return SizedBox(      

      width:120,
      
      child:DropdownButton<String>(
    
        dropdownColor: Colors.greenAccent,
        isExpanded: true,
        hint: Text(hintText),
        value: (value.isEmpty)? null : value,
        
        onChanged: (escolha)=> dropValue.value = escolha.toString(),
            
        items:dropOpcao.map((opcao) => DropdownMenuItem(
          value: opcao,
          child:Text(opcao),
        )).toList(),
        
      ),

    );
  }

  Future<List<Residuos?>> findModel() async {
        
    const url = "localhost:8081/api/v1/residuos/pilhas";

    final response = await http.get(Uri.parse(url));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map<Residuos?>((resp)=>Residuos.fromMap(resp)).toList();
    
  }
  
}