import 'package:flutter/material.dart';

class Niveis extends StatelessWidget {

  const Niveis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center (child: Text('Escolha o nível das questões',style: TextStyle(color: Color(0xFF212121)),)),
          
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
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('    Olá jogador, o nivel fácil contém \n    exercícios de soma e subtração, \n    o nivel médio contém exercícios \n   de multiplicação e divisão, o nivel \n    difícil contém exercícios de raiz \n        quadrada e potenciação. \n                        Bom jogo.',style:TextStyle(fontSize: 20,color: Colors.white)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    print('Pressionado');                    
                    Navigator.pushNamed(context, 'Quiz1');
                  },
                  child: Text('NIVEL FÁCIL',style:TextStyle(fontSize: 25,color: Colors.black)),
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
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    print('Pressionado');                    
                    Navigator.pushNamed(context, 'Quiz2');
                  },
                  child: Text('NIVEL MÉDIO',style:TextStyle(fontSize: 25,color: Colors.black)),
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
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    print('Pressionado');                    
                    Navigator.pushNamed(context, 'Quiz3');
                  },
                  child: Text('NIVEL DIFÍCIL',style:TextStyle(fontSize: 25,color: Colors.black)),
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
              ),
            ],
          ),
          ),
        ),
      ),
    );
  }
}