import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:webudget/screen/newlogin.dart';
import 'package:webudget/sreens/newlogin.dart';
import 'package:webudget/weBudget/getstart.dart';
import 'package:webudget/widget/navigation.dart';

import 'login.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
// Methode de deconnexion

  void logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (builderContext) => MainPage()));
  }

// Boite de dialogue
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Déconnexion'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Voulez vous vraiment vous déconnecter ?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Oui'),
              onPressed: () {
                logout();
              },
            ),
            TextButton(
              child: Text('Non'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text('Index 0:Budget'),
    Text('Index 1:DM'),
    Text('Index 2:Budget')
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Stack(
        children: <Widget>[
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            child: Column(children: <Widget>[
              Card(
                color: Colors.black,
              )
            ]),
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.lightBlue,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Container(
              //margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(children: <Widget>[
                        Text(
                          'SOLDE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '100.000 FCFA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        child: Row(children: <Widget>[
                          Container(
                              child: Column(children: <Widget>[
                            Text(
                              'REVENU 1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '100.000 FCFA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                          SizedBox(width: 10),
                          Container(
                              child: Column(children: <Widget>[
                            Text(
                              'REVENU 2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '150.000 FCFA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                          SizedBox(width: 10),
                          Container(
                              child: Column(children: <Widget>[
                            Text(
                              'REVENU 3',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '80.000 FCFA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]))
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
