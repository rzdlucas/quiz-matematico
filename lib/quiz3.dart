import 'package:flutter/material.dart';
import 'package:quiz/resultados.dart';
import 'quiz_dados3.dart';

class Quiz3 extends StatefulWidget {
  const Quiz3({ Key? key}) : super(key: key);

  @override
  State<Quiz3> createState() => _QuizState();
}

class _QuizState extends State<Quiz3> {

  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {    
    quiz.shuffle();

    quiz.forEach((element) {
    int alternativaCorreta = element['alternativa_correta'];
      List respostas = element['respostas'];

      String respostaCorreta = element['respostas'][alternativaCorreta-1];
      
      respostas.shuffle();
      int i = 1;
      respostas.forEach((element) {
        print(element);
        if (element == respostaCorreta){
          alternativaCorreta = i;
        }
        i++;
      });
      element['alternativa_correta'] = alternativaCorreta;  
    });

    void respondeu( int respostaNumero){
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero){
          print('acertou');
          acertos++;
        }else{
          print('errou');
          erros++;
        }

        print('acertos totais: $acertos erros totatis: $erros');

        if (perguntaNumero == 10){
          print('Terminou o Quiz');
          Navigator.pushNamed(context, 'Resultado', arguments: Argumentos(acertos));
        }else{
          perguntaNumero++;
        }
      });
    }


      return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center (child: Text('Nivel difícil',style: TextStyle(color: Color(0xFF212121)),)),
          
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta $perguntaNumero de 10',style:TextStyle(fontSize: 20,color: Colors.white))),
                
                Text('Pergunta:\n\n' + quiz[perguntaNumero - 1]['pergunta'],
                style:TextStyle(fontSize: 20,color: Colors.white)),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('Pressionado 1');
                      respondeu(1);
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][0],
                    style:TextStyle(fontSize: 20,color: Colors.black)),
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
                      print('Pressionado 2');
                      respondeu(2);
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][1],
                    style:TextStyle(fontSize: 20,color: Colors.black)),
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
                      print('Pressionado 3');
                      respondeu(3);
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][2],
                    style:TextStyle(fontSize: 20,color: Colors.black)),
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
                      print('Pressionado 4');
                      respondeu(4);
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][3],
                    style:TextStyle(fontSize: 20,color: Colors.black)),
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