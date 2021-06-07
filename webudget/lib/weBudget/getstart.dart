import 'package:flutter/material.dart';
import 'package:webudget/weBudget/loginstart.dart';

import '../login.dart';

class Getstart extends StatefulWidget {
  @override
  _GetstartState createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        body: Container(
          child: Center(
            child: Container(
              color: Colors.white,
              height: 800,
              width: 400,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 110,
                  ),
                  Text(
                    'Bienvenue',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Image.asset('assets/logoacceuil.png'),
                  SizedBox(
                    height: 160,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ButtonTheme(
                        buttonColor: Colors.lightBlue,
                        minWidth: MediaQuery.of(context).size.width,
                        height: 55,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (builderContext) => new Login()));
                          },
                          child: Text(
                            'Getstarted',
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
