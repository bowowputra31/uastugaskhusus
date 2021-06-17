import 'package:flutter/material.dart';
import 'home.dart';

class KhsPage extends StatelessWidget {
  static String tag = 'khs-page';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('KARTU HASIL STUDI',
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
              margin: EdgeInsets.all(20.0),
              width: 337,
              height: 76,
              color: Color.fromARGB(255, 210, 196, 239),
              child: Text(
                'Kartu Hasil Studi merupakan fasilitas yang dapat digunakan untuk melihat hasil studi mahasiswa persemester. Selain dapat dilihat secara online, hasil studi ini juga dapat dicetak.',
                style: TextStyle(color: Colors.black, wordSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
