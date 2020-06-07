import 'package:flutter/material.dart';
import 'package:help_others/Clients/View/AlterarDados.dart';
import 'package:help_others/Clients/View/ClientHome.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.grey.shade100,
          primaryColor: Colors.blue,
          primaryColorLight: Colors.green,
          iconTheme: IconThemeData(color: Colors.green),
          textSelectionColor: Colors.black),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black,
        primaryColor: Colors.green,
        textSelectionColor: Colors.white,
      ),
      routes: {
        '/Login': (context) => Login(),
        '/ClientHomePage': (context) => PerfilHome(),
        '/AlterarDados': (context) => AlterarDados(),
      },
      home: AlterarDados(),
    );
    // home: Login());
  }

  _factoryCreateCard(texto) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.white,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text('$texto'),
      ),
    );
  }
}
