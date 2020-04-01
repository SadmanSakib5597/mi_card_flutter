
import 'package:flutter/material.dart';
//import 'Notification.dart';
import 'Contributor.dart';
import 'NavDrawer.dart';
import 'Schedule.dart';
import 'BusSearch.dart';
//import 'DTable.dart';

//import "package:flutter_tutorials/widgets/nav-drawer.dart";


/*void main() {
  runApp(Myapp());
}*/

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search Bus'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: BusSearch());
              },
            )
          ],
/*Text('BUS Tracker'),*/

          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
        ),
        drawer: NavDrawer(),
        //backgroundColor: Colors.lightGreenAccent[400],
        body: Testbdy(),
      ),
    );
  }
}


class Testbdy extends StatefulWidget {
  @override
  _TestbdyState createState() => _TestbdyState();
}

class _TestbdyState extends State<Testbdy> {
  String myText = "Test Text";

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Container(
      height: height,
      width: width,
      color: Colors.blue,
      child: Image(
        image: AssetImage('Images/map.jpg'),
        fit: BoxFit.cover,
      ),
    ));
  }
}
