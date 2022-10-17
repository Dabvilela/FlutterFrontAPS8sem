
import 'package:flutter/material.dart';

class LocalCards extends StatefulWidget {
  final String nome;
  final String foto;  

  const LocalCards(this.nome, this.foto, {Key? key})
      : super(key: key);

  @override
  State<LocalCards> createState() => _LocalCardsState();
}

class _LocalCardsState extends State<LocalCards> {
  
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      
      child: Container(

        child: Stack(

          children: [

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.blue,
              ),
              height: 140,
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  
                  height: 100,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),

                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    children: [                      
                      //imagem do local
                      Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.black12,
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            widget.foto,
                            height: 100,
                            width: 72,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(

                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(
                                  fontSize: 24,
                                  overflow: TextOverflow.ellipsis),
                            ),

                          ),
                          
                        ],
                      ),

                    ],

                  ),

                ),         

              ],
            ),

          ],

        ),

      ),
    );
  }
}