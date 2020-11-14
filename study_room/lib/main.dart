import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // var maxHeight = size.height - padding.top - padding.bottom;
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('mi card'),
        // ),
        backgroundColor: Colors.indigo[500],
        body: Center(
          child: RaisedButton(
            child: Text('自習室へいく！'),
            onPressed: (){
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => NextPage(),
              //     )
              // ),
              // 押したら反応するコードを書く
              // 画面遷移のコード
            },
          ),
        ),
        // body: SafeArea(
        //   child: Row(
        //     // crossAxisAlignment: CrossAxisAlignment.start,
        //     // 交差軸方向に引き伸ばして配置
        //     // crossAxisAlignment: CrossAxisAlignment.stretch,
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     // verticalDirection: VerticalDirection.down,
        //     children: <Widget>[
        //       Column(
        //         mainAxisSize: MainAxisSize.min,
        //         // crossAxisAlignment: CrossAxisAlignment.stretch,
        //         children: <Widget>[
        //           Container(
        //             width: 100.0,
        //             height: 645.0,
        //             color: Colors.indigo,
        //             // child: Text('2'),
        //           ),
        //         ],
        //       ),
        //       Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: <Widget>[
        //           Container(
        //             width: 80.0,
        //             height: 35.0,
        //             color: Colors.red[400],
        //             child: Text('Creat Room\n or Share\n',
        //             ),
        //           ),
        //           Container(
        //             width: 100.0,
        //             height: 40.0,
        //             color: Colors.indigo,
        //             ),
        //           CircleAvatar(
        //             radius: 50.0,
        //             backgroundColor: Colors.indigo[400],
        //             backgroundImage: AssetImage('images/Ree.png'),
        //           ),
        //           Text(
        //             'Study Room',
        //             style: TextStyle(
        //               fontFamily: 'Pacifico',
        //               fontSize: 30.0,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.white,
        //             ),
        //           ),
        //           Container(
        //             width: 100.0,
        //             height: 1.0,
        //             color: Colors.indigo,
        //             // child: Text('2'),
        //           ),
        //           // Text(
        //           //   '\nBorn 2003/08/30\n'
        //           //   'Away 2020/07/25',
        //           //   style: TextStyle(
        //           //     fontFamily: 'Source Sans Pro',
        //           //     fontSize: 10.0,
        //           //     color: Colors.white,
        //           //     letterSpacing: 2.5,
        //           //   ),
        //           // ),
        //         ],
        //       ),
        //       Column(
        //         children: <Widget>[
        //           Container(
        //             width: 100.0,
        //             height: 645.0,
        //             color: Colors.indigo,
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次のページ"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.red,
      ),
    );
  }
}
