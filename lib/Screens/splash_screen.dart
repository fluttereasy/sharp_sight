import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharp_sight/Screens/otp_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _loadnextScreen();
    super.initState();
  }

  Future _loadnextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, CupertinoPageRoute(builder: (context) => const OtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Image(image: AssetImage('assets/sharpsightlogo.jpg'))),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}