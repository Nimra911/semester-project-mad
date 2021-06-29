import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'saved contact.dart';
import 'welcome.dart';


class  Addcontact extends StatefulWidget {
  @override
  _AddcontactState createState() => _AddcontactState();
}

class _AddcontactState extends State<Addcontact> {
  TextEditingController firstControl = new TextEditingController(); // input controller from users
  TextEditingController lastControl = new TextEditingController();
  TextEditingController addressControl = new TextEditingController(); // input controller from users
  TextEditingController phoneControl = new TextEditingController();
  TextEditingController emailControl = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Add Contacts"),
              leading: GestureDetector(
                  onTap: (



                      ) { /* Write listener code here */ },
                  child:   IconButton(
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

                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: (){

                      save(context);
                    },
                    child: Text(
                      'Save', //title
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 17.0,color:Colors.white,),),
                    //aligment
                  ),
                ),

              ],
              backgroundColor: Colors.deepPurple,
            ),
            body:Form(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: firstControl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'First Name',
                        suffixIcon: Icon(Icons.contacts_rounded, color: Colors.blue[900],),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
                    child: TextFormField(
                      controller: lastControl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Last Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
                    child: TextFormField(
                      controller: addressControl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Address',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
                    child: TextFormField(
                      controller: phoneControl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Phone',
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
                    child: TextFormField(
                      controller: emailControl,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email',

                      ),
                    ),
               ),

                    // padding: EdgeInsets.only(right: 20.0),
                     FlatButton(
                      onPressed: (){
                        Map <String,dynamic> data={"FirstName":firstControl.text,"LastName":lastControl.text,"address":addressControl.text,"phone":phoneControl.text,"email":emailControl.text};
                        FirebaseFirestore.instance.collection("Test").add(data);
                        return showDialog(context: context, builder:(ctx)=>AlertDialog(

                        ));
                      },
                      child: Text(
                        'Save', //title
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 17.0,color:Colors.red,),),
                      //aligment
                    ),

                ],
              ),
            ),
          ),
        )
    );

  }
}


























void save(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>savecontact()));
}
void arrow(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => welcome()));
}








