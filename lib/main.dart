import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  // 「./Pages/HomePage.dar」 へ移動
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
