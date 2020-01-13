import 'package:flutter/material.dart';

import 'Dashboard.dart';

class DashMain extends StatelessWidget {
  final appTitle = 'My Insurance';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: DashMainPage(title: appTitle),
    );
  }
}

class DashMainPage extends StatelessWidget {
  final String title;

  DashMainPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 450.0 : deviceWidth * 0.95;
    final double btnSize = (deviceWidth - 120) / 2;

    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            child: Center(
                child: SingleChildScrollView(
              child: Container(
                  //padding: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                  width: targetWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                                minWidth: btnSize,
                                height: btnSize,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Dashboard(value: 0),
                                        )),
                                    color: Colors.lightGreen,
                                    child: Text(
                                      "Report \nAccident",
                                    ),
                                  ),
                                )),
                            ButtonTheme(
                                minWidth: btnSize,
                                height: btnSize,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              Dashboard(value: 1),
                                        )),
                                    color: Colors.lightGreen,
                                    child: Text(
                                      "View Previous",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                                minWidth: btnSize,
                                height: btnSize,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: RaisedButton(
                                    onPressed: () {
                                      /*...*/
                                    },
                                    color: Colors.lightGreen,
                                    child: Text(
                                      "Profile",
                                    ),
                                  ),
                                )),
                            ButtonTheme(
                                minWidth: btnSize,
                                height: btnSize,
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 20.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: RaisedButton(
                                    onPressed: () {
                                      /*...*/
                                    },
                                    color: Colors.lightGreen,
                                    child: Text(
                                      "Logout",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )),
            ))));
  }
}
