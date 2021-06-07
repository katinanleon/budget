import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:webudget/login.dart';

import 'house.dart';

class Transport extends StatefulWidget {
  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(1, 0, 10, 0),
            height: 100,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Icon(
                    Icons.house,
                    size: 100,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
          ),

          // TRANSPORT

          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Maintenance',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '70.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Carburant',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '5.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Assurance',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '8.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          //
          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Taxi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '8.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Nourriture

          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Avion',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '8.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          //
          // Famille

          Container(
            padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
            height: 60,
            width: double.maxFinite,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            '',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          child: Text(
                            '8.000 FCFA',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          //
        ],
      ),
    );
  }
}
