import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loginUI/login_challenge.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return new MaterialApp(

        title: "Funny",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.red),
        home: new LoginApp(),

    );

  }
}
