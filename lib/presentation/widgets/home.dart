import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/widgets/painter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(alignment: Alignment.center, children: [
        Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.transparent
            ),
          ], 
           color:  Color(0xFFF6F6F6),
          ),
          height: 40.0,
        
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          // child: ElevatedButton(onPressed:(){Navigator.pushNamed(context, '/screen2');},
          //    style: ElevatedButton.styleFrom(
          //               backgroundColor: const Color(0xFFF6F6F6),),
          //    child:  const Icon(Icons.animation_outlined, size: 40, color: Colors.black,)
          //     )
        ),
      ]),
 backgroundColor: const Color(0xFFF6F6F6),
      body:  Center(
          child: Column(
            children: [
             Center(
          child: CustomPaint(
            size: const Size(300, 200),
            painter: CurvePainter(),
          ),
        ),
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
     