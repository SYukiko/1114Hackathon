import 'package:flutter/material.dart';

Color ABColor = Colors.teal[600] ;
Color BGColor = Colors.teal[50];

TextStyle name_style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

class user{
  user({this.name,this.icon});

  String name;
  String icon;
  int yaruki;
}

List<user> UList = [
  user(name: 'Aさん',icon: 'images/twitter.png'),
  user(name: 'Bさん',icon: 'images/fire_small.png'),
  user(name: 'Cさん',icon: 'images/fire_small.png'),
  user(name: 'Dさん',icon: 'images/monst.png'),
  user(name: 'Eさん',icon: 'images/fire_big.png'),
  user(name: 'Fさん',icon: 'images/fire_small.png'),
];