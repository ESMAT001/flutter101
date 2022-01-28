import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: 100.0,
                  child: Image.network(
                      'https://img-c.udemycdn.com/user/200_H/173002169_0cf4_2.jpg'),
                )
              ],
            ),
          )),
    ));
  }
}
