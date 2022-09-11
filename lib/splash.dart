import 'package:bs_calculator/Home.dart';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      print("After 4 seconds");
      //This block of code will execute after 3 sec of app launch
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Home(title: 'HST Calculator')));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image(image: AssetImage('images/HSA.png')),
            ),
            Text(
              'Hyderabad Steel Traders',
              style: TextStyle(
                  color: Color(0xff079452),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
