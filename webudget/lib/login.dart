import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webudget/weBudget/SignUp.dart';
import 'acceuil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  // Future login() async {
  //   var url = "http://192.168.43.202/image_upload_php_mysql/login.php";
  //   var response = await http.post(url, body: {
  //     "email": email.text,
  //     "password": pass.text,
  //   });
  //   var data = json.decode(response.body);
  //   if (data == "Success") {
  //     Fluttertoast.showToast(
  //         msg: "Connexion reussie",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.green,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => MainPage(),
  //       ),
  //     );
  //   } else {
  //     Fluttertoast.showToast(
  //         msg: "Email ou mot de passe incorrect",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Text(
                  'Connexion',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                  image: AssetImage('assets/image2.png'),
                  height: 110,
                  width: 110,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          border: OutlineInputBorder(),
                          hintText: 'Email'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.40),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      controller: pass,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          hintText: 'Mot de passe'),
                      autofocus: false,
                      obscureText: true,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
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
                              builder: (builderContext) => new SignUp()));
                        },
                        child: Text(
                          'Connexion',
                          //   style: TextStyle(color: Colors.white, fontSize: 22),
                          // ),
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(25)
                          //     )
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      )),
                ),
                SizedBox(
                  height: 101,
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async => false,
    );
  }
}
