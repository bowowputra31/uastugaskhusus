import 'package:flutter/material.dart';
import 'khs.dart';
import 'profil.dart';
import 'krs.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    ProfilPage.tag: (context) => ProfilPage(),
    KrsPage.tag: (context) => KrsPage(),
    KhsPage.tag: (context) => KhsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SIM UNIPA',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(primarySwatch: Colors.green, fontFamily: 'Nunito'),
      home: new LoginPage(),
      routes: routes,
    );
  }
}
