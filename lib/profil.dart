import 'package:flutter/material.dart';
import 'home.dart';

class ProfilPage extends StatelessWidget {
  static String tag = 'profil-page';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('PROFIL MAHASISWA',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 166, 107, 211),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 321,
              width: 241,
              child: Image.asset(
                'assets/images/suzy.jpg',
                height: 8,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Diah Ayu Rahmayanti',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, height: 2),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                '201865006',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, height: 2),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'TEKNIK INFORMATIKA',
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, height: 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
