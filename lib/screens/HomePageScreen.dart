import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'NavDrawer.dart';
import 'BusSearch.dart';
import 'DatabaseService.dart';
import '../User.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  static const String id = 'homepage_screen';

  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<HomePage>{
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUSer;
  @override
  void initState(){
    super.initState();
    getCurrentUSer();
  }
  void getCurrentUSer() async{
    try{
      final user = await _auth.currentUser();
      if(user!= null){
        loggedInUSer = user;
        User.uid = loggedInUSer.uid;
        print("\nemail: " + loggedInUSer.email + "\nUID: " + loggedInUSer.uid);

        //await DatabseService(uid: loggedInUSer.uid).updateUserData(User.userName, User.userRegNo, User.userRegNo);
        //signOut();
      }
      //getCurrentUSer();
    }catch(e){
      print(e);
    }
  }
  void signOut() async {
    print("waiting for sign out");
    await _auth.signOut();
    print('sign out');
  }
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
