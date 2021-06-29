
import 'package:flutter/material.dart';
import 'welcome.dart';
int _groupValue = -1;
class transaction extends StatelessWidget {

  @override

  Widget build(BuildContext context)
  {

    return MaterialApp(

        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Add Transaction"),
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

                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child:  TextButton(
                    onPressed: (){

                      _navigateToNextScreen(context);


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
            body:MyCustomForm(),
          ),
        )
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

        Container(
          height: 50.0,
          child: Row(
            children: <Widget>[
              Container(child: Text("   Amount₹:      ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),),
              Flexible(
                flex: 2,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                      border: UnderlineInputBorder(),

                      hintText: '0.00',
                      hintStyle: TextStyle(fontSize: 20.0,
                      )),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: 500.0,
          height: 50.0,
          child: Row(
            children: <Widget>[

              Container(child: Text("   Type:             ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
              Flexible(
                flex: 2,
                child:  Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 0,
                        groupValue: _groupValue,
                        title: Text("Lend",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.greenAccent)),
                        onChanged: (newValue) =>
                            setState(() => _groupValue = newValue),
                        activeColor: Colors.greenAccent,
                        selected: false,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 1,
                        groupValue: _groupValue,
                        title: Text("Borrow",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.red)),
                        onChanged: (newValue) =>
                            setState(() => _groupValue = newValue),
                        activeColor: Colors.red,
                        selected: true,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(

          height: 50.0,
          child: Row(
            children: <Widget>[
              Container(child: Text("   With:             ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
              Flexible(
                flex: 2,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0),
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                      border: UnderlineInputBorder(),

                      hintText:'Select Contact',
                      hintStyle: TextStyle(fontSize: 20.0,color: Colors.lightBlue,)),
                ),
              ),
            ],
          ),
        ),
        Container(

          height: 50.0,
          child: Row(
            children: <Widget>[
              Container(child: Text("   Date:             ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
              Flexible(
                flex: 2,
                child: TextFormField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
                      border: UnderlineInputBorder(),

                      hintText: 'DD/MM/YY',
                      hintStyle: TextStyle(fontSize: 20.0,color: Colors.lightBlue,)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 14),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: '   Remarks',

            ),
          ),
        ),



      ],
    );
  }
}




void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => welcome()));
}


void arrow(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => welcome()));
}





