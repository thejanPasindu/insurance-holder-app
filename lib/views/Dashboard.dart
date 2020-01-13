import 'package:flutter/material.dart';
import 'package:insure_app/views/CreateReport.dart';
// import 'package:insure_app/views/DashMain.dart';
// import 'package:insure_app/views/Login.dart';
import 'package:insure_app/views/PreviousReports.dart';
import 'package:insure_app/views/Profile.dart';

class Dashboard extends StatefulWidget {
  final int value;
  Dashboard({Key key, this.value}) : super(key: key);

  //final appTitle = 'Drawer Demo';
  @override
  State<StatefulWidget> createState() {
    return new MyDashPage();
  }
}

class MyDashPage extends State<Dashboard> {
  String title = "Create Accident Report";
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new CreateReport();
      case 1:
        return new PreviousReport();
      case 2:
        return new Profile();
      default:
        return new Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }
  //MyDashPage({this.title});

  @override
  Widget build(BuildContext context) {
     

    // switch (_selectedDrawerIndex) {
    //   case 0:
    //     setState(() => title = 'Create Accident Report');
    //     break;
    //   case 1:
    //     setState(() => title = 'View Previous');
    //     break;
    //   case 2:
    //     setState(() => title = 'View Previous');
    //     break;
    //   default:
    //     return new Text("Error");
    // }
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Report Accident'),
              onTap: () {
                 _onSelectItem(0);
                setState(() => title = 'Create Accident Report');
               
              },
            ),
            ListTile(
              title: Text('View Previous'),
              onTap: () {
                _onSelectItem(1);
               setState(() => title = 'View Previous');
                
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                _onSelectItem(2);
               setState(() => title = 'Profile');
                
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
