import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 7), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Lottie.asset("images/sp.json"),
          SizedBox(
            height: 5,
          ),
          Text(
            "Order Your Food Now!",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "Order food and get delivery withing a few minutes to your door",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ],
      ),
    );
  }
}
