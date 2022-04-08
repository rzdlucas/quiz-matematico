import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        
        appBar: AppBar(
          title: Center (child: Text('Olá jogador, bem vindo!',style: TextStyle(color: Color(0xFF212121)),)),
          
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
                Image.asset('assets/images/logo.png'),              
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      print('Pressionado');
                      Navigator.pushNamed(context, 'Niveis');
                    },
                    child: Text('INICIAR',style:TextStyle(fontSize: 25,color: Colors.black)),
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
                ),
                Text('Versão BETA',style:TextStyle(fontSize: 15,color: Colors.white)),
              ],
            ),
            ),
          ),
        ),
      ),
    );
  }
}