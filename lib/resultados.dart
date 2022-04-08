import 'package:flutter/material.dart';
import 'sobre.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);

}

class Resultado extends StatelessWidget {

  static const routeName = 'Resultado';

  const Resultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center (child: Text('Você finalizou!',style: TextStyle(color: Color(0xFF212121)),)),
          
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
                
                Text('Resultado:',style:TextStyle(fontSize: 30,color: Colors.white)),
                Text('Você Acertou\n     ${argumentos.acertos} de 10\n   Perguntas.',
                  style:TextStyle(fontSize: 30,color: Colors.white)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('Pressionado');
                      
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text('INÍCIO',style:TextStyle(fontSize: 25,color: Colors.black)),
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
                      
                      Navigator.pushNamed(context, 'Niveis');
                    },
                    child: Text('JOGAR NOVAMENTE',style:TextStyle(fontSize: 25,color: Colors.black)),
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
                      
                      Navigator.pushNamed(context, 'Sobre');
                    },
                    child: Text('SOBRE',style:TextStyle(fontSize: 25,color: Colors.black)),
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