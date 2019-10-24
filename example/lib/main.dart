import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:facebook_app_event/facebook_app_event.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () async {
                  final facebookLogin = FacebookLogin();
                  final result = await facebookLogin.logInWithReadPermissions(['email']);

                  print(result.status.toString());
                },
                child: Text("Login With Facebook"),
              ),
              FlatButton(
                onPressed: () {
                  FacebookAppEvent().setUserId("ASD");
                },
                child: Text("Hello"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
