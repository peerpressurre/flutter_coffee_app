import 'dart:io';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home ({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
Widget build(BuildContext context) {
  return Scaffold(
  bottomNavigationBar: Stack(
  alignment: Alignment.center,
  children: [
    Container(
      height: 40.0,
      color: const Color(0xFFF6F6F6),
    ),
    Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/screen2');},
         style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF6F6F6),),
         child:  const Icon(Icons.animation_outlined, size: 40, color: Colors.black,)
          )
      ),
  ]),
 backgroundColor: const Color(0xFFF6F6F6),
        body: Center(
          child:
                  Stack(
                    children:[                
                   Align(
                     alignment: const FractionalOffset(0.5, 0.4),
                         child: 
                           Padding(padding: const EdgeInsets.fromLTRB(50, 50, 50, 25),
                         child: 
                         ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(100, 50),
                               backgroundColor: Colors.purple, // background (button) color
                               foregroundColor: Colors.white, // foreground (text) color
                            ),
                          onPressed:(){Navigator.pushNamed(context, '/screen1');},
                          child: const Text("Cat 1"),),
                    )
                    ),
                    Align(
                        alignment: const FractionalOffset(0.5, 0.4),        
                        child: 
                          Padding(padding: const EdgeInsets.fromLTRB(50, 150, 50, 25),
                         child: 
                          ElevatedButton( 
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(100, 50),
                               backgroundColor: Colors.purple, // background (button) color
                               foregroundColor: Colors.white, // foreground (text) color
                            ),
                            onPressed:(){Navigator.pushNamed(context, '/screen2');},
                     child: const Text("Cat 2"),)
                    )
                  )
                  ])
                   ),                              
  );                                      
   }
}


  //     bottomNavigationBar: BottomNavigationBar(
  //   items: const <BottomNavigationBarItem>[
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.call),
  //       label: 'Кав\'ярні',
  //     ),
  //     BottomNavigationBarItem(
  //       icon: Icon(Icons.camera),
  //       label: 'Карта гостя',
  //     ),
  //      BottomNavigationBarItem(
  //       icon: Icon(Icons.sunny),
  //       label: 'Ще',
  //     ),
  //   ],
  // ),
     