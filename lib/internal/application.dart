import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/screens/locations.dart';
import 'package:flutter_coffee_app/presentation/screens/menu.dart';
import 'package:flutter_coffee_app/presentation/screens/guest.dart';
import 'package:flutter_coffee_app/presentation/screens/splash.dart';
import 'package:flutter_coffee_app/presentation/screens/themes.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  //      initialRoute: '/',
  // routes: {
  //   // When navigating to the "/second" route, build the SecondScreen widget.
  //   '/menu': (context) => const Menu(),
  //   '/guest': (context) => const Guest(),
  //   '/locations': (context) => const Locations(),
  //   '/themes': (context) => const Themes(),

  // },
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