import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/screens/screen1.dart';
import 'package:flutter_coffee_app/presentation/screens/screen2.dart';
import 'package:flutter_coffee_app/presentation/screens/splash.dart';
// import 'package:flutter_coffee_app/presentation/screens/splash.dart';
// import 'package:flutter_coffee_app/presentation/screens/splash.dart';
import 'package:flutter_coffee_app/presentation/widgets/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: '/',
  routes: {
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/screen1': (context) => const Screen1(),
    '/screen2': (context) => const Screen2(),
  },
      debugShowCheckedModeBanner: false,
      title: 'Personal Info',
      theme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.purple[100],
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 25.0, fontStyle: FontStyle.normal),
      bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    ),
  ),    
   home: const Splash()
      // home: AnimatedSplashScreen(splash: const Splash(), nextScreen: const Home()),
        );
  }
}