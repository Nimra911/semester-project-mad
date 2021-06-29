import 'package:flutter/material.dart';
import 'welcome.dart';


class setting extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Settings"),
              leading: GestureDetector(
                onTap: () { /* Write listener code here */ },
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: (


                      ) {
                    // do something
                    arrow(context);
                  },
                )
              ),
              actions: <Widget>[


              ],
              backgroundColor: Colors.deepPurple,
            ),
            body:SafeArea (
              child: Column(
                children:<Widget>[
                  ListTile(

                    title: const Text("Backup",  style: TextStyle(

                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),


                    subtitle: const Text('Backup Contacts and Transaction to device Storage', style: TextStyle(

                      fontSize: 14.0,
                      color: Colors.blueGrey,
                    ),
                      textAlign: TextAlign.left,
                    ),



                  ),
                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),
                  ListTile(

                    title: const Text("Restore",  style: TextStyle(

                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),


                    subtitle: const Text('Restore Contacts and Transactions from Available Backups on your device storage', style: TextStyle(

                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),

                  ListTile(

                    title: const Text("Backup On Google Drive",  style: TextStyle(

                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),


                    subtitle: const Text('Backup Contacts and Transaction from your Google Account', style: TextStyle(

                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                      textAlign: TextAlign.left,
                    ),



                  ),

                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),

                  ListTile(

                    title: const Text("Restore from Google Drive",  style: TextStyle(

                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),
                    subtitle: const Text('Restore Contacts and Transaction from your Google Account', style: TextStyle(

                      fontSize: 14,
                      color: Colors.blueGrey,
                    ),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),



                  ListTile(

                    title: const Text("Default Transaction Values",  style: TextStyle(

                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),
                  ListTile(

                    title: const Text("Currency",  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),

                  ),

                  Divider(
                    height:5.0,
                    thickness: 2.0,
                  ),
                  ListTile(

                    title: const Text("Recent Transaction History Size",  style: TextStyle(

                      fontSize: 23,
                      color: Colors.black,
                    ),
                      textAlign: TextAlign.left,
                    ),


                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}

void arrow(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => welcome()));
}