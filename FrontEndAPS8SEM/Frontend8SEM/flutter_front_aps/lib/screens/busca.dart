import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Onde Descarto"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        
        padding: const EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        
        color: Colors.greenAccent,

        child: ListView(
  
        ),
        
      ),
      
    );
  }

}