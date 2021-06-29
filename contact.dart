import 'package:flutter/material.dart';
import 'Addcontact.dart';
import 'contactrecords.dart';


class contacts extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(

     home:



     Row(
       children: <Widget>[
     Center(
       child:
         Container(
           padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
      child: Text(
          "No Contacts Yet, Add  Contact using Button below.",
          style: TextStyle(color: Colors.grey[700], fontSize: 10.0,fontWeight:FontWeight.bold)



         ),
         ),
     ),
         Container(
           padding: EdgeInsets.fromLTRB(20, 550, 0, 0),
           child:

           FloatingActionButton(

             backgroundColor: Colors.deepPurple,
             onPressed: () {

               _recordToNextScreen(context);


             },
             tooltip: 'Add new Record',
             child: Icon(
               Icons.add,

               color: Colors.white,
             ),


           ),



         ),


       ],
     ),





    );

  }
}
void _recordToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Addcontact()));
}
