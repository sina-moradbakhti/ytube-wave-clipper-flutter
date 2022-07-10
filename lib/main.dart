import 'package:flutter/material.dart';
import 'package:test/Home/Views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
                bodyText2: TextStyle(fontSize: 20.0),
                bodyText1:
                    TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                button: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            buttonTheme: const ButtonThemeData(
                padding: EdgeInsets.all(10),
                buttonColor: Colors.blue,
                textTheme: ButtonTextTheme.normal)),
        initialRoute: '/',
        routes: {'/': (context) => HomeView()});
  }
}
