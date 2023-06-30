import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/screens/guest.dart';
import 'package:flutter_coffee_app/presentation/screens/locations.dart';
import 'package:flutter_coffee_app/presentation/screens/menu.dart';
import 'package:flutter_coffee_app/presentation/screens/themes.dart';
import 'package:flutter_coffee_app/presentation/widgets/clippers.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final List<Widget> screens = [
    const Menu(), 
    const Guest(), 
    const Locations(), 
    const Themes(), 
  ];

  int currentIndex = 0;
  // late PageController pageController;
  PageController pageController = PageController();

  @override
  void dispose() {
       pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDBF1ED),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(children: [
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
      //       PageView(
      //       controller: pageController,
      //       children: screens,
      //       onPageChanged: (int index) {
      //         setState(() {
      //           currentIndex = index;
      //         });
      //       },
      //     ),
      //   ],
      // ),
           Builder(
             builder: (context) {
               return PageView(
          controller: pageController,
          children: screens,
         onPageChanged: (int index) {
                // Update currentIndex when the page changes
                if (index >= 0 && index < screens.length) {
                  Scaffold.of(context).setState(() {
                    pageController.jumpToPage(index);
                  });
                }
              },
             );
             }
           ),
          ])
          ),
      );
        //  onPageChanged: (int index) {
        //         // Update currentIndex when the page changes
        //         if (index >= 0 && index < screens.length) {
        //           Scaffold.of(context).setState(() {
        //             pageController.jumpToPage(index);
        //           });
        //         }
        //       },
             }}

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
