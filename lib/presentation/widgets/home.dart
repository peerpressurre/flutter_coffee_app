import 'package:flutter/material.dart';
// import 'package:flutter_coffee_app/presentation/screens/guest.dart';
// import 'package:flutter_coffee_app/presentation/screens/locations.dart';
// import 'package:flutter_coffee_app/presentation/screens/menu.dart';
// import 'package:flutter_coffee_app/presentation/screens/themes.dart';
import 'package:flutter_coffee_app/presentation/widgets/clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDBF1ED),
        // ignore: avoid_unnecessary_containers
        body: Stack(children: [
          Opacity(
              opacity: 0.5,
              child: ClipPath(
                  clipper: TopClipper(),
                  child: Container(
                    color: Colors.teal.shade200,
                    height: 300,
                  ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
                opacity: 0.5,
                child: ClipPath(
                    clipper: BottomLeftClipper(),
                    child: Container(
                      color: Colors.teal.shade200,
                      height: 300,
                    ))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
                opacity: 0.5,
                child: ClipPath(
                    clipper: BottomRightClipper(),
                    child: Container(
                      color: Colors.teal.shade200,
                      height: 200,
                    ))),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Карта гостя",
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(221, 20, 20, 20),
                        fontWeight: FontWeight.w500,
                        fontSize: 14)),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFD6D6D6).withOpacity(0.7),
                          spreadRadius: 3,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    alignment: Alignment.center,
                    child: Image.network(
                      height: 120,
                      'https://www.linkpicture.com/q/Без-названия_2.png',
                      //  fit: BoxFit.fill,
                    )),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 210),
                child: Text("142218 715141 79225 251521 211",
                    style: GoogleFonts.inter(color: Colors.black87)),
              )
            ]),
            // FloatingActionButton(onPressed: (){}),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFD6D6D6).withOpacity(0.7),
                        spreadRadius: 3,
                        blurRadius: 5,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: FloatingActionButton(
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.zero),
                    backgroundColor: const Color(0xFFF6F6F6),
                    child: Text(
                      "Меню",
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(221, 20, 20, 20),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                  )),
            ]),
          ])
        ]));
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }
// class _HomeState extends State<Home> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Menu(),
//     Guest(),
//     Locations(),
//     //  Text(
//     //   'Index 0: Меню',
//     //   style: optionStyle,
//     // ),
//     // Text(
//     //   'Index 1: Карта гостя',
//     //   style: optionStyle,
//     // ),
//     // Text(
//     //   'Index 2: Адреси',
//     //   style: optionStyle,
//     // ),
//     // Text(
//     //   'Index 3: Тема',
//     //   style: optionStyle,
//     // ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFDBF1ED),
//       // ignore: avoid_unnecessary_containers
//       body: Container(
//         child: Stack(children: [
//           Opacity(
//               opacity: 0.5,
//               child: ClipPath(
//                   clipper: TopClipper(),
//                   child: Container(
//                     color: Colors.teal.shade200,
//                     height: 300,
//                   )
//                   )
//                   ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Opacity(
//                 opacity: 0.5,
//                 child: ClipPath(
//                     clipper: BottomLeftClipper(),
//                     child: Container(
//                       color: Colors.teal.shade200,
//                       height: 300,
//                     )
//                     )
//                     ),
//           ),
//          _widgetOptions.elementAt(_selectedIndex)
//           ])
//           ),
//            bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.local_dining_rounded),
//             label: 'Меню',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.qr_code_rounded),
//             label: 'Карта гостя',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.location_on),
//             label: 'Локації',
//           ),
//           //  BottomNavigationBarItem(
//           //   icon: Icon(Icons.brightness_6_rounded),
//           //   label: 'Теми',
//           // ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.black87,
//         onTap: _onItemTapped,
//       ),
//       );
//   }
// }

// const Positioned(
//   bottom: 0,
//   left: 0,
//   right: 0,
//   child: SizedBox(
//     height: 45,
// child: AppBar(
//   // leading: const Icon(Icons.animation_outlined),
//   actions: [
//     // screen 1
//     Padding(padding: const EdgeInsets.only(right: 27),
//     child:
//       IconButton(
//       icon: const Icon(Icons.local_dining_rounded, size: 19, color: Colors.black),
//       highlightColor: Colors.grey[200],
//       onPressed: () {
//        Navigator.pushNamed(context, '/menu');
//       },
//     ),
//     ),
//     // screen 2
//     Padding(padding: const EdgeInsets.only(right: 27),
//     child:
//       IconButton(
//       icon: const Icon(Icons.qr_code_rounded, size: 19, color: Colors.black),
//       onPressed: () {
//        Navigator.pushNamed(context, '/guest');
//       },
//     ),
//     // screen 3
//     ),Padding(padding: const EdgeInsets.only(right: 27),
//     child:
//       IconButton(
//       icon: const Icon(Icons.location_on, size: 19, color: Colors.black),
//       onPressed: () {
//         Navigator.pushNamed(context, '/locations');
//       },
//     ),
//     // screen 4
//     ),Padding(padding: const EdgeInsets.only(right: 27),
//     child:
//         IconButton(
//       icon: const Icon(Icons.brightness_6_rounded, size: 19, color: Colors.black),
//       onPressed: () {
//         Navigator.pushNamed(context, '/themes');
//       },
//     ),
//     ),
//   ],
//   backgroundColor: const Color(0xFFF6F6F6),
// ),
//   ),
// ),
