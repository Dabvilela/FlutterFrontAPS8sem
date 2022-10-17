import 'busca.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
            
            textBoxEmail(emailController),                        
            const SizedBox(height: 10,),

            textBoxPassword(passwordController),

            buttonRecuperarSenha(),
            const SizedBox(height: 60,),

            enterButton(coresGradient, context, emailController, passwordController),            

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

  TextFormField textBoxEmail(TextEditingController emailController) {

    return TextFormField(            
      keyboardType: TextInputType.emailAddress,      
      decoration: estiloTexto("Email"),
      controller: emailController,
      //add validator

    );

  }

  TextFormField textBoxPassword(TextEditingController passwordController) {

    return TextFormField(

      keyboardType: TextInputType.text,              
      obscureText: true,
      decoration: estiloTexto("Senha"),
      controller: passwordController,
      //add validator
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

  Container enterButton(List<Color> coresGradient, BuildContext context, TextEditingController emailController, TextEditingController passwordController ) {    

    return Container(
           
      height: 60,
      alignment: Alignment.centerLeft,
      
      //cor do botão
      decoration: BoxDecoration(

        gradient:  LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.3, 0.7],
          colors: coresGradient,        
        ),

        borderRadius: const BorderRadius.all(Radius.circular(5)),
        
        //borda do button
        border: Border.all(          
          width: 1.5 ,
          color: Colors.black,
          style: BorderStyle.solid,                    
        ),

      ),

      child: SizedBox.expand(
        
        child: TextButton(
          
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            
            children: <Widget>[
              
              const Text("Login",
                
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),

              ),
              
              SizedBox(
            
                child: 
                  Image.asset("images/reciclar.png"),
                  height: 35,
                  width: 35,
            
              ),

            ],
            
          ),

          onPressed: () {
           
            //add validacao do login
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