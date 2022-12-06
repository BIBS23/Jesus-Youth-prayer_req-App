import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:prayer_req/main.dart';
import '../Util/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AnimatedSplashScreen(splash: splash , splashIconSize: 150 ,nextScreen: Home()),    
      
    );
  }
}
