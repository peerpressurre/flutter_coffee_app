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
        alignment: Alignment.center,
        child: ClipOval(
                child: Image.network(
                 'https://www.linkpicture.com/q/photo_5226769419215162195_x.jpg', 
                 fit: BoxFit.cover,
                ),
              ),
      )
    );
  }
}