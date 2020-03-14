import 'package:flutter/material.dart';
/*import "package:flutter_tutorials/widgets/nav-drawer.dart";*/

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BUS Tracker'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
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
/*
Image(
image: AssetImage('Images/map.jpg'),
fit: BoxFit.cover,
*/
/*NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),*/ /*

),

Text(myText),
            FlatButton(
              child: Text("Click me!"),
              onPressed: (){
                setState(() {
                  myText = "Text changed..";
                });
              },
            ),
*/

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BUS Tracker'),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Images/bashir.jpg'),
              ),
            ],
          ),
        ));
  }
}

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
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('Images/lalBus.jpeg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              ),
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
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Bus Location'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Set Notification'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.face),
            title: Text('Contributor'),
            onTap: () {},
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
