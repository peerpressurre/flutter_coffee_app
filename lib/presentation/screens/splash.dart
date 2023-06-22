import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/widgets/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsetsDirectional.only(bottom: 300),
                alignment: Alignment.topCenter,
                child: Image.network(
                  width: 300,
                  height: 300,
                  'https://www.linkpicture.com/q/unnamed_18.jpg',
                  //  fit: BoxFit.cover,
                )),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 275),
                child: SpinKitCircle(
                  size: 75,
                  color: Colors.teal[200],
                ),
              ),
            )
          ],
        ));
  }
}
