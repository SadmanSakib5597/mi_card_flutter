import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'DatabaseService.dart';
import 'package:DU_CHAKA/screens/Schedule.dart';
import 'package:DU_CHAKA/screens/contributor.dart';
import 'ProfileScreen.dart';
import 'AboutScreen.dart';
import '../User.dart';

import 'WelcomeScreen.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Menu',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
                color: Colors.black38,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('Images/lalBus.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {
              DatabseService(uid: User.uid).getUSerData(),
              if(User.userName!= null){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                ),

              }
            },
          ),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('Bus Schedule'),
            onTap: () => {
              Navigator.push(
                // ignore: sdk_version_set_literal
                context,
                MaterialPageRoute(builder: (context) => Schedule()),
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Bus Location'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Set Notification'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Contributor'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contributor()),
              );
              //Navigator.pushNamed(context, Contributor.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              signOut();
             /* _signOut() async {
                await _firebaseAuth.signOut();
              }*/
              //Navigator.pushNamed(context, WelcomeScreen.id);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
              );
              /*runApp(MaterialApp(
                //home: WelcomeScreen(),
                initialRoute: WelcomeScreen.id,
                routes:{
                  WelcomeScreen.id: (context) => WelcomeScreen(),
                  HomePage.id: (context) => HomePage(),
                },
                debugShowCheckedModeBanner: false,
              ));*/
            }, /*_signOut,*/
            //onPressed:_signOut;
            //jump to function
          ),
        ],
      ),
    );
  }
}
void signOut() async {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  await _firebaseAuth.signOut();
  User.userName = null;
  User.userRegNo = null;
  User.userPhoneNo = null;
  User.password = null;
  User.userEmail = null;
}
/* void _signOut() {
    FirebaseAuth.instance.signOut();
    Future<FirebaseUser> Function() user = FirebaseAuth.instance.currentUser;
    //print('$user');
    runApp(
        new MaterialApp(
          home: new WelcomeScreen(),
        )

    );
  }*/
