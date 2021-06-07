import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:webudget/login.dart';
import 'package:webudget/weBudget/contenu_coutmoyen.dart';
import 'package:webudget/weBudget/house.dart';
import 'package:webudget/weBudget/transport.dart';
import 'package:google_fonts/google_fonts.dart';

class Contenu extends StatefulWidget {
  @override
  _ContenuState createState() => _ContenuState();
}

class _ContenuState extends State<Contenu> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            //   height: 160,
            //   width: double.maxFinite,
            //   // color: Colors.blue,
            //   child: Card(
            //     elevation: 0,
            //     child: Padding(
            //       padding: const EdgeInsets.all(0),
            //       child: Center(
            //         child: Container(
            //           child: Column(children: <Widget>[
            //             Container(
            //               padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            //               child: Text(
            //                 'REVENU',
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 30,
            //                     fontWeight: FontWeight.bold),
            //               ),
            //             ),
            //             Container(
            //               child: Text(
            //                 '250.000 FCFA',
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontSize: 30,
            //                     fontWeight: FontWeight.bold),
            //               ),
            //             )
            //           ]),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.lightBlue,
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Container(
                //margin: EdgeInsets.all(10),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Column(children: <Widget>[
                          Text('SOLDE',
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)

                              // style: TextStyle(
                              //     color: Colors.white,
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.bold),
                              ),
                          SizedBox(height: 5),
                          Text(
                            '100.000 FCFA',
                            style: GoogleFonts.lato(
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
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '100.000 FCFA',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ])),
                            SizedBox(width: 10),
                            Container(
                                child: Column(children: <Widget>[
                              Text(
                                'REVENU 2',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '150.000 FCFA',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                            ])),
                            SizedBox(width: 10),
                            Container(
                                child: Column(children: <Widget>[
                              Text(
                                'REVENU 3',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '80.000 FCFA',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal),
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
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
                    height: 100,
                    width: double.maxFinite,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.payment,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'DEPENSES',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '100.000 FCFA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '25%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (builderContext) =>
                                    new ContenuDepense(),
                              ));
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  // TRANSPORT
                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
                    height: 100,
                    width: double.maxFinite,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.money_sharp,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'EPARGNE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '100.000 FCFA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '10%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (builderContext) =>
                                    new ContenuDepense(),
                              ));
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
                    height: 100,
                    width: double.maxFinite,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.backpack,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'DETTE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '90.000 FCFA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '25%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (builderContext) =>
                                    new ContenuDepense(),
                              ));
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Etudes

                  //
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
