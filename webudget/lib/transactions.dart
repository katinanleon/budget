import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'models/transaction.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/card.dart';

class HomePageB extends StatefulWidget {
  HomePageB({Key key}) : super(key: key);

  @override
  _HomePageBState createState() => _HomePageBState();
}

class _HomePageBState extends State<HomePageB> {
  // List<PaymentCard> cardList = [
  //   PaymentCard(
  //       logoImageUrl: 'assets/logoacceuil.png',
  //       cartTypeUmageUrl: 'assets/1.png',
  //       number: '0781',
  //       balance: '4,891',
  //       cardColor: Colors.blueAccent),
  //   PaymentCard(
  //       logoImageUrl: 'assets/logoacceuil.png',
  //       cartTypeUmageUrl: 'assets/1.png',
  //       number: '4003',
  //       balance: '1,691',
  //       cardColor: Colors.greenAccent)
  // ];

  List<Transaction> transationList = [
    Transaction(
        time: '06.32',
        purose: 'Achat de mobilier',
        cost: '6.86',
        color: Colors.amber),
    Transaction(
        time: '11.42',
        purose: 'Revenu de prestation',
        cost: '916.86',
        color: Colors.redAccent),
    Transaction(
        time: '06.09',
        purose: 'Apple',
        cost: '3656.86',
        color: Colors.blueAccent),
    Transaction(
        time: '02.02', purose: 'H&M', cost: '76.86', color: Colors.amberAccent),
    Transaction(
        time: '03.23',
        purose: 'Addidas',
        cost: '696.86',
        color: Colors.cyanAccent),
    Transaction(
        time: '04.42',
        purose: 'Dell',
        cost: '1566.86',
        color: Colors.lightGreenAccent),
    Transaction(
        time: '05.59', purose: 'Home Depot', cost: '16.86', color: Colors.red),
    Transaction(
        time: '06.32',
        purose: 'Watch',
        cost: '96.86',
        color: Colors.orangeAccent),
    Transaction(
        time: '11.42',
        purose: 'Revenu de prestation',
        cost: '916.86',
        color: Colors.redAccent),
    Transaction(
        time: '06.09',
        purose: 'Apple',
        cost: '3656.86',
        color: Colors.blueAccent),
    Transaction(
        time: '02.02', purose: 'H&M', cost: '76.86', color: Colors.amberAccent),
    Transaction(
        time: '03.23',
        purose: 'Addidas',
        cost: '696.86',
        color: Colors.cyanAccent),
    Transaction(
        time: '04.42',
        purose: 'Dell',
        cost: '1566.86',
        color: Colors.lightGreenAccent),
    Transaction(
        time: '05.59', purose: 'Home Depot', cost: '16.86', color: Colors.red),
    Transaction(
        time: '06.32',
        purose: 'Watch',
        cost: '96.86',
        color: Colors.orangeAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TRANSACTIONS',
                    style: GoogleFonts.lato(
                        color: Colors.grey[600],
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  for (Transaction transaction in transationList)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: transaction.color,
                                borderRadius: BorderRadius.circular(3)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            transaction.time,
                            style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            transaction.purose,
                            style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(
                            '\$ ${transaction.cost}',
                            style: GoogleFonts.lato(
                                color: Colors.grey[700],
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
