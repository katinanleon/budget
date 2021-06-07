import 'package:flutter/material.dart';
import 'package:webudget/weBudget/getstart.dart';
import 'login.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 5);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) {
          return Getstart();
        }),
        (route) => false,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              child: Center(
                child: Container(
                  height: 300,
                  width: 200,
                  child: Image.asset('assets/logoacceuil.png'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: Colors.white,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
          ),
        ],
      ),
    );
  }
}
