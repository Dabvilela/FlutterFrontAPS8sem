import 'package:flutter/material.dart';

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
                  onPressed: (){
                    //criar funçao para consumir as API

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



}

class Residuos{
  String? id;
  String? tipoNome;
  String? nome;
  String? descricao;
  String? cep;
  String? numero;
  
  Residuos(
    {
      this.id,
      this.tipoNome,
      this.nome,
      this.descricao,
      this.cep,
      this.numero,   
    }
  );   
}
class ViaCep{
  String? cep; 
  String? logradouro;
  String? complemento;
  String? localidade;
  String? uf;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;

  ViaCep(
    {
      this.cep,
      this.logradouro,
      this.complemento,
      this.localidade,
      this.uf,
      this.ibge,
      this.gia,
      this.ddd,
      this.siafi,
    }
  );  
}

class PontosColeta{
  String? descricao;
  String? cep;
  String? numero;

  PontosColeta(
    {
      this.descricao,
      this.cep,
      this.numero,
    }
  );
}