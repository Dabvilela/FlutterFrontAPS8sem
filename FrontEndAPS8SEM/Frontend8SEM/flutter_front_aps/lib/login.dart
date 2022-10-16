import 'busca.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    const coresGradient = [
      Color.fromARGB(248, 68, 179, 17),
      Color.fromARGB(248, 17, 168, 179),
    ];  

    return Scaffold(

      body: Container(

        padding: const EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        
        color: Colors.greenAccent,

        child: ListView(

          children: <Widget>[
            
            imageLogo(),
            const SizedBox(height: 80,),
            
            textBoxEmail(),                        
            const SizedBox(height: 10,),

            textBoxPassword(),

            buttonRecuperarSenha(),
            const SizedBox(height: 60,),

            enterButton(coresGradient, context),            

          ],
        ),
      ),
      
    );
  }

  SizedBox imageLogo() {

    return SizedBox(
      width: 128,
      height: 128,
      child: Image.asset('images/logo.png',),
    );

  }

  TextFormField textBoxEmail() {

    return TextFormField(            
      keyboardType: TextInputType.emailAddress,      
      decoration: estiloTexto("Email")
    );

  }

  TextFormField textBoxPassword() {

    return TextFormField(

      keyboardType: TextInputType.text,              
      obscureText: true,
      decoration: estiloTexto("Senha"),
      style: const TextStyle(fontSize: 20),

    );

  }

  Container buttonRecuperarSenha() {

    return Container(
      height: 40,
      alignment: Alignment.centerRight,

      child:TextButton(                
        
        onPressed: () {},

        child: const Text("Recuperar Senha", textAlign: TextAlign.right,),                

      ),
    );

  }

  Container enterButton(List<Color> coresGradient, BuildContext context ) {    

    return Container(
           
      height: 60,
      alignment: Alignment.centerLeft,

      decoration: BoxDecoration(

        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.3, 0.7],
          colors: coresGradient
        ),

        borderRadius: const BorderRadius.all(Radius.circular(5)),

      ),

      child: SizedBox.expand(
        child: TextButton(child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20,),),
              SizedBox(child: Image.asset("images/reciclar.png"),height: 35,width: 35,),
            ],
            
          ),
          onPressed: () {
            
            Navigator.push(
            
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const SearchScreen(),
              ),

            );

          },
        ),
        
      ),
    );

  }

  InputDecoration estiloTexto(String texto) {

    String lblText = texto;
    InputDecoration estiloTexto = InputDecoration(
      labelText: lblText,
    
      labelStyle: const TextStyle(
        color: Colors.white60,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),

    );

    return estiloTexto;
  }

}