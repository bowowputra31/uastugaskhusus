import 'package:flutter/material.dart';
import 'home.dart';

class KrsPage extends StatelessWidget {
  static String tag = 'krs-page';

  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('KARTU RENCANA STUDI',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Color.fromARGB(255, 166, 107, 211),
          leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(HomePage.tag);
            },
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              height: 176,
              width: 337,
              color: Color.fromARGB(255, 210, 196, 239),
              child: Text(
                'Kartu Rencana Studi merupakan fasilitas pengisian KRS secara online. Fasilitas KRS Online ini hanya dapat digunakan pada saat masa KRS atau masa revisi KRS. Mahasiswa dapat memilih matakuliah yang ingin diambil bersesuaian dengan jatah sks yang dimiliki dan matakuliah yang ditawarkan. Setelah melakukan pengisian KRS mahasiswa dapat mencetak KRS tersebut agar dapat ditandatangani oleh dosen pembimbingnya masing-masing.',
                style: TextStyle(color: Colors.black, wordSpacing: 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
