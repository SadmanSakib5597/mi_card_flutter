import 'package:flutter/material.dart';

import 'Schedule.dart';
import 'contributor.dart';

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
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
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
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
