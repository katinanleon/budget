import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webudget/acceuil.dart';
import 'package:webudget/transactions.dart';
//import 'package:webudget/screen/newlogin.dart';
import 'package:webudget/sreens/newlogin.dart';
import 'package:webudget/weBudget/Contenu_budget.dart';
import 'package:webudget/weBudget/articles.dart';
import 'package:webudget/weBudget/contenu_coutmoyen.dart';
import 'package:webudget/weBudget/getstart.dart';
import 'package:webudget/weBudget/homeScreen.dart';
import 'package:webudget/weBudget/house.dart';
import 'package:webudget/widget/navigation.dart';

import '../login.dart';

class Tableau extends StatefulWidget {
  @override
  _TableauState createState() => _TableauState();
}

class _TableauState extends State<Tableau> {
// Methode de deconnexion

  void logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (builderContext) => Tableau()));
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
    Contenu(),
    HomePageB(),
    MyHomePage(),
    // HomeScreen()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      drawer: new Drawer(
        child: Material(
          color: Colors.white.withOpacity(0.5),
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                currentAccountPicture: new CircleAvatar(
                    // child: Image.asset("images/user.jpg"),
                    ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                    // backgroundColor: Colors.white,
                    child: new Text("K"),
                  )
                ],
                accountName: new Text("Katinan"),
                accountEmail: new Text("lkatinan@gmail.com"),
              ),
              new ListTile(
                trailing: new Icon(Icons.house),
                title: new Text("Acceuil"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (builderContext) => Getstart()));
                },
              ),
              new ListTile(
                title: new Text("profil"),
                trailing: new Icon(Icons.person),
                hoverColor: Colors.black,
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (builderContext) => new MainPage()));
                },
              ),
              new ListTile(
                title: new Text("Notifications"),
                trailing: new Icon(Icons.notifications_active),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.pushReplacementNamed(context, '/enregistrement');
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (builderContext) => new HomeScreen()));
                },
              ),
              new ListTile(
                title: new Text("Paramètres"),
                trailing: new Icon(Icons.settings),
                hoverColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (builderContext) => new LoginSignupScreen()));
                },
              ),
              new Divider(),
              new ListTile(
                  title: new Text("Close"),
                  trailing: new Icon(Icons.close),
                  onTap: () {
                    _showMyDialog();
                  }),
            ],
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Budget',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sentiment_satisfied,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Operations',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Occasion',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
      ),
    );
  }
}
