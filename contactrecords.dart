import 'package:flutter/material.dart';




class record extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Dues_App"),
                leading: GestureDetector(
                  onTap: () { /* Write listener code here */ },
                  child: Icon(
                    Icons.arrow_back,  // add custom icons also
                  ),
                ),
                actions: [
                  PopupMenuButton(
                    padding: EdgeInsets.only(right: 40.0),
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(
                        child: ListTile(

                          title: Text('clear History'),
                        ),
                      ),
                      const PopupMenuItem(
                        child: ListTile(

                          title: Text('Delete Contact'),
                        ),
                      ),
                      const PopupMenuItem(
                        child: ListTile(

                          title: Text('Edit Contact'),
                        ),
                      ),
                      const PopupMenuItem(
                        child: ListTile(

                          title: Text('Refresh Total Dues'),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              body: TabBarView(children: <Widget>[
                Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Text(
                            "No Transactions Yet, Add  Transcation using Button below.",
                            style: TextStyle(color: Colors.grey[700], fontSize: 27.0,)))),
                Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Text(
                            "No Transactions Yet, Add  Transcation using Button below.",
                            style: TextStyle(color: Colors.grey[700], fontSize: 27.0, )))),
              ]),
              floatingActionButton: FloatingActionButton(
                backgroundColor: Colors.deepPurple,
                onPressed: () {
                },
                tooltip: 'Add new Record',
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            )
        )
    );

  }}