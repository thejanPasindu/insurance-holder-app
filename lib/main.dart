import 'package:flutter/material.dart';
import 'package:insure_app/views/CreateReport.dart';
import 'package:insure_app/views/DashMain.dart';

import 'package:insure_app/views/Dashboard.dart';
import 'package:insure_app/views/Home.dart';
import 'package:insure_app/views/Login.dart';
import 'package:provider/provider.dart';

import 'Services/FetchUser.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => FetchUser()),
        ],
        child: MaterialApp(
          theme: new ThemeData(
            primarySwatch: Colors.blue,
            //fontFamily: 'Raleway',
            brightness: Brightness.light,
            //settings.gettheme() ? Brightness.dark : Brightness.light,
          ),
          routes: <String, WidgetBuilder>{
            '/Home': (BuildContext context) => new MyHomePage(),
            '/login': (BuildContext context) => new Login(),
            '/dashboad': (BuildContext context) => new Dashboard(),
            
            '/dashmain': (BuildContext context) => new DashMain(),
            '/creatReport': (BuildContext context) => new CreateReport(),
          },
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        ));
  }
}
