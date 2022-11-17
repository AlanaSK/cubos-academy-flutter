// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.indigo.shade900,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
              color: Colors.blue,
              child: Image.network(
                  'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 25),
              child: Text(
                'Equillibrium #3429',
                style: TextStyle(
                    fontSize: 30,
                    decoration: TextDecoration.none,
                    color: Colors.lightBlueAccent,
                    letterSpacing: 0,
                    fontFamily: 'arial',
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 25),
              child: Text('Nossa coleção Equillibrium promove calma e balanço',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent.shade100,
                      decoration: TextDecoration.none,
                      letterSpacing: 0,
                      fontFamily: 'arial')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 25),
                  child: Text(
                    '0.041 ETH',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlueAccent,
                        decoration: TextDecoration.none,
                        letterSpacing: 0,
                        fontFamily: 'arial'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 0, 0, 25),
                  child: Icon(Icons.watch_later, color: Colors.lightBlueAccent),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 15, 25),
                  child: Text('restam 3 dias',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightBlueAccent,
                          decoration: TextDecoration.none,
                          letterSpacing: 0,
                          fontFamily: 'arial')),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 25),
              child: Container(
                height: 1,
                color: Colors.grey[500],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  child: SizedBox(
                    height: 50,
                    child: Image.network(
                        'https://avatars.githubusercontent.com/u/84411894?s=400&u=5242c4da780fb78bea76fef10d7d3188f33bbeca&v=4'),
                  ),
                ),
                Text(
                  'Criado por ',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      fontFamily: 'arial'),
                ),
                Text('Alana Sassaki',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        fontFamily: 'arial'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
