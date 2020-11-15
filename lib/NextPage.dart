import 'package:flutter/material.dart';
import 'RoomPage.dart';
import 'color.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  Container make_icons(String asset_name) => Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          color: Colors.teal[100],
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.scaleDown,
            image: AssetImage('$asset_name'),
          ),
          border: Border.all(width: 20, color: BGColor)
      )
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BGColor,
      appBar: AppBar(
          title: Text('プロフィール'),
          backgroundColor: ABColor,
          actions: <Widget>[
            RaisedButton(
              child: Text(
                '参加',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              color: ABColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoomPage()),
                );
              },
            )
          ]),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  width: 110.0,
                  height: 200.0,
                ),
                Center(
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.account_circle,
                          size: 200,
                          color: Colors.teal[100],
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.grey,
                        ),
                      ),
                    ]),
                  ),
                ),
                make_icons('images/dog.png'),
                make_icons('images/cat.png'),
                make_icons('images/clown-fish.png'),
                Container(
                  width: 100.0,
                  height: 200.0,
                ),
              ]),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                enabled: true,
                autofocus: true,
                // 入力数
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.black),
                obscureText: false,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: 'ニックネームを入力',
                    hintStyle: TextStyle(color:Colors.teal)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'このルームで共有する名前を入力できます',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
