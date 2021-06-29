import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Addcontact.dart';
import 'contact.dart';
import 'history.dart';
import 'Settings.dart';




class welcome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Dues"),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 40.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 26.0,
                    ),
                  )),
            ],
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              tabs: const <Tab>[
                Tab(text: 'Contacts'),
                Tab(text: 'History'),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  padding: const EdgeInsets.only(top: 90.0),
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text(
                        "Overall Due",
                        style: TextStyle(color: Colors.white, fontSize: 17.0,),

                      ),
                      trailing: Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 25,
                      ),
                      subtitle: Text(
                        " ₹ 0.00",
                        style: TextStyle(color: Colors.white, fontSize: 17.0,),
                      ),
                    ),
                  ]),
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold,),
                  ),
                  leading: Icon(Icons.home),
                  onTap: () {
                    //Navigator.pushNamed(context, "/welcome");
                    check(context);
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold,),
                  ),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    check1(context);
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    "Rate Dues",
                    style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.bold,),
                  ),
                  leading: Icon(Icons.announcement),
                  onTap: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 2.0,
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    "v2.2.1/43",
                    style: TextStyle(color: Colors.black, fontSize: 17.0,
                      fontWeight: FontWeight.bold,),
                  ),
                  leading: Icon(Icons.error_outline),
                  onTap: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                ),
              ],
            ),
          ), //"No Contacts Yet, Add  Contact using Button below.",

          body: TabBarView(
              children: [contacts(), historys()
          ]),

        ),
      ),
    );
  }
}


void check(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => welcome()));
}
void check1(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => setting()));
}


