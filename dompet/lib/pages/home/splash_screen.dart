import 'dart:async';
import 'package:dompet/constant/constant.dart';
import 'package:dompet/pages/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [color3, color7],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
            color: color2,
            boxShadow: [myBoxShadow]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    'assets/svg/wallet-money.svg',
                    color: Colors.white,
                    width: 100,
                  ),
                  const Text(
                    "Dompet",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'Version 0.0.1',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
