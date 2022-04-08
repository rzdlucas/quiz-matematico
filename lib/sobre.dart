import 'package:flutter/material.dart';

class Sobre extends StatelessWidget {

  const Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center (child: Text('Sobre o APP',style: TextStyle(color: Color(0xFF212121)),)),
          
          backgroundColor: Color(0xFFB2FF59),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
      
              fit: BoxFit.cover
              
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('  Desenvolvido por alunos \n   da UFCat na matéria de \n      Fábrica de Software, \n      ministrada pela Dra. \n     Luanna Lopes Lobato, \n         pelos alunos Kaio \n        Nascimento, Lucas \n  Antônio, Mateus Bonfim \n           e Vitor Walter.',style:TextStyle(fontSize: 30,color: Colors.white)),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('Pressionado');
                      
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('INÍCIO',style:TextStyle(fontSize: 20,color: Colors.black)),
                    style: ElevatedButton.styleFrom(                      
                      primary: Colors.lightGreenAccent[200],                  
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                      elevation: 100,
                      shadowColor: Colors.lightBlueAccent, // Shadow Color
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                )
              ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}