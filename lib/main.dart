import "package:flutter/material.dart";
import "package:projet2/screens/relu.dart";
import "package:projet2/screens/home.dart";
import "package:projet2/screens/sigmoide.dart";
import "package:projet2/screens/tanh.dart";

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "tanh": (context) => Tanh(),
        "sigmoide": (context) => Sigmoide(),
        "relu": (context) => Probabilite()
      },
    );
  }
}
