import 'dart:async';
import 'package:auth/location.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => LocationApp())),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            Image.asset(
              height: MediaQuery.of(context).size.width * 0.35,
              width: MediaQuery.of(context).size.width * 0.35,
              "assets/logo.jpeg",
            ),
            Expanded(child: SizedBox()),
            Text(
              "Crypt Authenticator",
              style: TextStyle(
                color: Color(0xFF161C40),
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.065,
              ),
            ),
            Text(
              "Securing your app the right way",
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
