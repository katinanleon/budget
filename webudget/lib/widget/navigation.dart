import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:http/http.dart' as http;

import 'package:webudget/acceuil.dart';

class LoginNav extends StatefulWidget {
  @override
  _LoginNavState createState() => _LoginNavState();
}

class _LoginNavState extends State<LoginNav> {
  bool _rememberMe = false;

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

// -----------Connexion-------------------
  Future login() async {
    var url =
        "http://192.168.43.202/flutter/flutter_adj_commissaire/flutter_adj/connect.php";
    var response = await http.post(url, body: {
      "username": username.text,
      "password": password.text,
    });
    var data = json.decode(response.body);
    if (data == "Success") {
      // Navigator.pushReplacementNamed(context, '/Dashbord');

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (builderContext) => MainPage()));
    }
    //else {
    // print("erreur");
    //}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      // #00ff80
                      Color(0xFF388E3C),
                      Color(0xFF388E3C),
                      Color(0xFF388E3C),
                      Color(0xFF2E7D32),
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        height: 5.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'username',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color(0xFF4CAF50),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            height: 60.0,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                hintText: 'Entrez votre Nom d\'utilisateur',
                                hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              controller: username,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Mot de passe',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Color(0xFF4CAF50),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6.0,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            height: 60.0,
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14.0),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                hintText: 'Entrez votre mot de passe',
                                hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: 'OpenSans',
                                ),
                              ),
                              controller: password,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          onPressed: () =>
                              print('Forgot Password Button Pressed'),
                          padding: EdgeInsets.only(right: 0.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 20.0,
                        child: Row(
                          children: <Widget>[
                            Theme(
                              data: ThemeData(
                                  unselectedWidgetColor: Colors.white),
                              child: Checkbox(
                                value: _rememberMe,
                                checkColor: Colors.blue,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Remember me',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: MaterialButton(
                          elevation: 5.0,
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (builderContext) => new MainPage()));
                          },
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Color(0xFF527DAA),
                              letterSpacing: 1.5,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
