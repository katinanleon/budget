import 'package:flutter/material.dart';
// import 'package:webudget/page/home_page.dart';
// import 'package:webudget/weBudget/ProductPage.dart';
// import 'package:webudget/weBudget/homeScreen.dart';
// import 'package:webudget/weBudget/articles.dart';
// import 'transactions.dart';

import 'lancement.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeBudget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // routes: {
      //   '/productPage': (context) => ProductPage(),
      // },
    );
  }
}
