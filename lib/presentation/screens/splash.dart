import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/internal/application.dart';
import 'package:flutter_coffee_app/presentation/widgets/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: context()=>const Application()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: const Color(0xFF1A2902),
        child: Image.network(
         'https://www.linkpicture.com/q/photo1687211991.jpeg',
         fit: BoxFit.cover,
        ),
      )
    );
  }
}