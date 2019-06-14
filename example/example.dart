import 'package:flutter/material.dart';

import 'count_down_timer.dart';

///author xiejianlong
///description
///date 2019/6/13 17:28
///modify

void main() => runApp(Example());

class Example extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CountDownWidget Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CountDownWidget(
        startSeconds: 6,
        onTapCallback: (timer) {
          print('onTapCallback：current is ${timer.tick}s');
        },
        language: CountDown.EN,
        verifyStr: "Send",
        enableTS: TextStyle(color: const Color(0xff000000)),
        disableTS: TextStyle(color: const Color(0xff999999)),
      ),
    );
  }
}
