import 'package:flutter/material.dart';
import 'login.dart';
import 'profil.dart';
import 'krs.dart';
import 'khs.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: const Text('PORTAL AKADEMIK',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            backgroundColor: Color.fromARGB(255, 166, 107, 211),
            leading: new IconButton(
              icon: new Icon(
                Icons.logout_rounded,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(LoginPage.tag);
              },
            ),
          ),
          body: ListView(
            children: [
              Container(
                child: Text(
                  '     Selamat Datang, ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      height: 3.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  child: Text(
                '     Diah Ayu Rahmayanti',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              )),
              Container(
                height: 133,
                width: 337,
                child: Image.asset(
                  'assets/images/aa.png',
                  height: 5,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '     Akademik',
                  style: TextStyle(
                      color: Colors.black,
                      height: 5,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.all(20.0),
                height: 209,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 157,
                      color: Color.fromARGB(255, 210, 196, 239),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.asset('assets/images/profil.png'),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed(ProfilPage.tag);
                            },
                            color: Color.fromARGB(255, 166, 107, 211),
                            child: Text(
                              'Profil Mahasiswa',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 157,
                      color: Color.fromARGB(255, 210, 196, 239),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.asset('assets/images/KRS.png'),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed(KrsPage.tag);
                            },
                            color: Color.fromARGB(255, 166, 107, 211),
                            child: Text(
                              'KRS',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 157,
                      color: Color.fromARGB(255, 210, 196, 239),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Image.asset('assets/images/khs.png'),
                          MaterialButton(
                            minWidth: 200.0,
                            height: 42.0,
                            onPressed: () {
                              Navigator.of(context).pushNamed(KhsPage.tag);
                            },
                            color: Color.fromARGB(255, 166, 107, 211),
                            child: Text(
                              'KHS',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
