import 'package:flutter/material.dart';
import 'package:flutter_front_aps/login.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Onde Descarto"),
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