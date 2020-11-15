import 'package:flutter/material.dart';
import '../settings.dart';

class RoomTab extends StatefulWidget {
  RoomTab({this.U});
  List<user> U;
  @override
  _RoomTabState createState() => _RoomTabState(U: U);
}

class _RoomTabState extends State<RoomTab> {
  _RoomTabState({this.U});
  List<user> U;
  exRow({user U0, user U1, Color Co}) => Expanded(
          child: Container(
        padding: EdgeInsets.all(10.0),
        //color: Co,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                child: Column(
              verticalDirection: VerticalDirection.up,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(child: Text(U0.name, style: name_style), height: 30),
                Expanded(
                    child: Container(
                        //color: Colors.grey,
                        child: Image.asset(U0.icon, fit: BoxFit.contain))),
              ],
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              verticalDirection: VerticalDirection.up,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(child: Text(U1.name, style: name_style), height: 30),
                Expanded(
                    child: Container(
                        //color: Colors.grey,
                        child: Image.asset(U1.icon, fit: BoxFit.contain))),
              ],
            )),
          ],
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        exRow(U0: U[0], U1: U[1], Co: Colors.white),
        exRow(U0: U[2], U1: U[3], Co: Colors.green),
        exRow(U0: U[4], U1: U[5], Co: Colors.blue),
        //exRow(U0: UList[4],U1: UList[5],Co: Colors.green),
      ],
    );
  }
}
