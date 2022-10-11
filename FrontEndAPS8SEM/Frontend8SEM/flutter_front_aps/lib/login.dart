import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    const coresGradient = [
      Color.fromARGB(248, 68, 179, 17),
      Color.fromARGB(248, 17, 168, 179),
    ];  

    return Scaffold(

      body: Container(

        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),

        color: Colors.white,

        child: ListView(

          children: <Widget>[
            
            imageLogo(),
            const SizedBox(height: 20,),
            
            textBoxEmail(),                        
            const SizedBox(height: 10,),

            textBoxSenha(),

            buttonRecuperarSenha(),
            const SizedBox(height: 40,),

            enterButton(coresGradient),            

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

  TextFormField textBoxSenha() {

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
        
        onPressed: () {
          // Navigator.push(context, 
          //   MaterialPageRoute(
          //     builder: (context) => ResetPasswordPage(),//TODO colocar recuperação de senha futuramente
          //   ),
          // );
        },

        child: const Text("Recuperar Senha", textAlign: TextAlign.right,),                

      ),
    );

  }

  Container enterButton(List<Color> coresGradient ) {    

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
    );

  }

  InputDecoration estiloTexto(String texto) {

    String lblText = texto;
    InputDecoration estiloTexto = InputDecoration(
      labelText: lblText,
    
      labelStyle: const TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),

    );

    return estiloTexto;
  }

}