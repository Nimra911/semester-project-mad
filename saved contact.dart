import 'package:flutter/material.dart';
import 'welcome.dart';


class savecontact extends StatelessWidget {

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


                    subtitle: const Text('eman fatima    lahore     1234567890     abc@gmail.com', style: TextStyle(

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