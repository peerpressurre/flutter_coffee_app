import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text('Betty'),
      ),
      body: Column(
        children: [
          Stack(
            children:[ 
              Align(
               alignment: const FractionalOffset(0.5, 0.4),
                child: 
                Padding(padding: const EdgeInsets.fromLTRB(00, 175, 50, 25),
                child: Container(
                      height: 175,
                      width: 175,
                      decoration: BoxDecoration(
                      color: Colors.purple[200],
                      boxShadow: [
                BoxShadow(
                 color: Colors.grey.withOpacity(0.5),
                 spreadRadius: 5,
                 blurRadius: 7,
                 offset: const Offset(0, 3), 
                ),
              ],
               borderRadius: BorderRadius.circular(500),
             ),
              child: ClipOval(
                child: Image.network(
                 'https://www.linkpicture.com/q/bettycropped.jpeg', 
                 fit: BoxFit.cover,
                ),
              )
          )
                )                 
          ),
           const Align(
            alignment: FractionalOffset(0.5, 0.4),
                  child:
                  Padding(padding: EdgeInsets.fromLTRB(00, 350, 50, 25),
                  child: Text(
                    "Ім'я: Бетті\nПо-матері: Софіївна\nВік: 4\nДіти: 4\nГладибельність: 10/10\nПроводить більше часу: На вулиці",
                    style: TextStyle(
                      color: Colors.black87,
                   fontSize: 13,
                   height: 2,
                   decorationThickness: 7,
                   fontWeight: FontWeight.w600,
                   decorationStyle: TextDecorationStyle.wavy,
                   fontStyle: FontStyle.normal
                    ),
                    ),
                  ), 
                ),       
          ]),
        ],
      ),           
          );
  }
}