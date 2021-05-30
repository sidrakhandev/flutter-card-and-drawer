import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyAlert(),
      ),
    );
  }
}

class MyAlert extends StatelessWidget {
  final Color gradientStart =
      Colors.deepPurple[700]; //Change start gradient color here
  final Color gradientEnd = Colors.purple[500]; //Change end gradient color here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Center(child: Text('Flutter Card')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Sidra Khan"),
              accountEmail: Text("khansidra@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lib/images/img.jpeg'),
              ),
              // onDetailsPressed: (){},
              decoration: BoxDecoration( color:Colors.purple[800] ),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.teal[800], size: 45),
              title: Text('Todays'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 2),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text('Products'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Direct Materials'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Direct Labour'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer),
              title: Text('Overheads'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Customers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Suppliers'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(thickness: 5),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Consultant'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
        body: new Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [gradientStart, gradientEnd],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('lib/images/img.jpeg'),
              ),
              Text(
                'Sidra Khan',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'NEWBIE',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal[100],
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text(
                      'sidrakhan@gmail.com',
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20),
                    ),
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                child: ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.teal),
                  title: Text(
                    '4/20/2021',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    color: Colors.deepPurple[700],
                    onPressed: () {
                      alertDialogBox(context);
                    },
                    child: Text(
                      'Subscribe',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Pacifico',
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlatButton(
                      color: Colors.deepPurple[700],
                      onPressed: () {
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Pacifico',
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// alertDialogBox function definition to show the alert
alertDialogBox(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK",
      style: TextStyle(
          color: Colors.blueAccent[400],
          fontFamily: 'Source Sans Pro',
          fontSize: 25,
          fontWeight: FontWeight.bold),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Creating the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "💥BOOM💥",
      style: TextStyle(
          color: Colors.redAccent[400],
          fontFamily: 'Source Sans Pro',
          fontSize: 25,
          fontWeight: FontWeight.bold),
    ),
    content: Text("You just subscribed us🎉",
      style: TextStyle(
          color: Colors.redAccent[400],
          fontFamily: 'Source Sans Pro',
          fontSize: 22,
          fontWeight: FontWeight.bold),),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
