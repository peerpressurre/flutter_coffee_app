import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/widgets/clippers.dart';

class Themes extends StatefulWidget {
  const Themes({super.key});

  @override
  State<Themes> createState() => _ThemesState();
}

class _ThemesState extends State<Themes> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFDBF1ED),
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Stack(children: [
             const Align(
              alignment: Alignment.center,
              child: Text("Themes")
            ),
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: SizedBox(
            //     height: 45,
            //     child: AppBar(
            //       // leading: const Icon(Icons.animation_outlined),
            //       actions: [
            //         // screen 1
            //         Padding(padding: const EdgeInsets.only(right: 27),
            //         child:
            //           IconButton(
            //           icon: const Icon(Icons.local_dining_rounded, size: 19, color: Colors.black),
            //           highlightColor: Colors.grey[200],
            //           onPressed: () {
            //            Navigator.pushNamed(context, '/menu');
            //           },
            //         ),
            //         ),
            //         // screen 2
            //         Padding(padding: const EdgeInsets.only(right: 27),
            //         child:
            //           IconButton(
            //           icon: const Icon(Icons.qr_code_rounded, size: 19, color: Colors.black),
            //           onPressed: () {
            //            Navigator.pushNamed(context, '/guest');
            //           },
            //         ),
            //         // screen 3
            //         ),Padding(padding: const EdgeInsets.only(right: 27),
            //         child:
            //           IconButton(
            //           icon: const Icon(Icons.location_on, size: 19, color: Colors.black),
            //           onPressed: () {
            //             Navigator.pushNamed(context, '/locations');
            //           },
            //         ),
            //         // screen 4
            //         ),Padding(padding: const EdgeInsets.only(right: 27),
            //         child:
            //             IconButton(
            //           icon: const Icon(Icons.brightness_6_rounded, size: 19, color: Colors.black),
            //           onPressed: () {
            //             Navigator.pushNamed(context, '/themes');
            //           },
            //         ),
            //         ),                  
            //       ],
            //       backgroundColor: const Color(0xFFF6F6F6),
            //     ),
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
          ]),
        ));
  }
}