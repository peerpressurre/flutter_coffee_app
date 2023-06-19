import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text('Ella'),
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
                 'https://www.linkpicture.com/q/ella2_2.jpeg', 
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
                    "Ім'я: Елла\nПо-матері: Софіївна\nВік: 2.5\nДіти: -\nГладибельність: 10/10\nПроводить більше часу: Дома",
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