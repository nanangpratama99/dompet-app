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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Column(
              children: [
                SvgPicture.asset(
                  'assets/svg/wallet-money.svg',
                  color: color3,
                  width: 100,
                ),
                const Text(
                  "Dompet",
                  style: TextStyle(color: color3, fontSize: 30),
                )
              ],
            ),
          ),
          const Spacer(),
          const Text(
            "Version 1.1.1",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
