import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:webudget/login.dart';
import 'package:webudget/page/home_page.dart';
import 'package:webudget/pie_chart/pie_chart_page.dart';
import 'package:webudget/weBudget/contenu_coutmoyen.dart';
import 'package:webudget/weBudget/house.dart';
import 'package:webudget/weBudget/transport.dart';
import 'package:google_fonts/google_fonts.dart';

class ContenuDepense extends StatefulWidget {
  @override
  _ContenuDepenseState createState() => _ContenuDepenseState();
}

class _ContenuDepenseState extends State<ContenuDepense> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
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
                          Container(
                            child: Column(children: <Widget>[
                              Text('DEPENSES',
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Text(
                                '100.000 FCFA',
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                            leading: Icon(Icons.home,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'MAISON',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '25.000 FCFA',
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
                                builder: (builderContext) => new ChartpieHome(),
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
                            leading: Icon(Icons.food_bank,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'NOURITURE',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '10.000 FCFA',
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
                            leading: Icon(Icons.car_repair,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'TRANSPORT',
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
                                      '5%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    //padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
                    height: 100,
                    width: double.maxFinite,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: ListTile(
                            leading: Icon(Icons.book,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'ETUDES',
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
                            leading: Icon(Icons.domain_verification_sharp,
                                color: Colors.orange, size: 50.0),
                            title: Container(
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'DIVERS',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '30.000 FCFA',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '30%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ]),
                            ),

                            //DIVERTISSEMENT
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
