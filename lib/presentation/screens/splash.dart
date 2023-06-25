import 'package:flutter/material.dart';
import 'package:flutter_coffee_app/presentation/widgets/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
const Splash({Key? key}) : super(key: key);
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
    await Future.delayed(const Duration(milliseconds: 1500));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

 @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
        backgroundColor: const Color(0xFFF6F6F6),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://www.linkpicture.com/q/unnamed_18.jpg',
              width: 275,
              height: 275,
            ),
            const SizedBox(height: 25),
            SpinKitRipple(
              size: 45,
              color: Colors.teal.shade200,
            ),
          ],
        ),
      ),




          // mainAxisAlignment: MainAxisAlignment.center,
          // children:[
          //   Row(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //           // padding: const EdgeInsetsDirectional.only(top: 125),
          //           alignment: Alignment.topCenter,
          //           child: Image.network(
          //             'https://www.linkpicture.com/q/unnamed_18.jpg',
          //              width: 300,
          //             height: 300,
          //           )),
          //     ],
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Align(
          //         // alignment: Alignment.center,
          //         child: Padding(
          //           padding: const EdgeInsets.only(top: 25),
          //           child: SpinKitCircle(
          //             size: 75,
          //             color: Colors.teal[200],
          //           ),
          //         ),
          //       ),
          //     ],
          //   )
          // ],
        )
  );
  }
}
