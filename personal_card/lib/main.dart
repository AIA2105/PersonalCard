import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: personalCard(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: camel_case_types
class personalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
          //alignment: Alignment.center,

          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage("images/dark.jpg"),
          fit: BoxFit.cover,
          ),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new CircleAvatar(
                radius:100 ,
                backgroundImage: AssetImage('images/me.jpg'),
              ),

              new Text(
                'Ahmed Al-Mahallawey',
                style: new TextStyle(
                    fontSize: 28,
                    color:Colors.white ,
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                ),
              ),

              new SizedBox(
                height: 10,
                width: 200,
                child: new Divider(
                  color: Colors.white,
                ),

              ),

              new Text(
                'Mobile Developer',
                style: new TextStyle(
                  fontSize: 20,
                  color:Colors.white70 ,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cinzel',
                ),
              ),

              new SizedBox(
                height: 50,
                width: 200,
              ),


              new Card(
                margin: EdgeInsets.fromLTRB(50, 20, 50, 20) ,
                child: new ListTile(
                  leading: new Icon(
                      Icons.phone,
                      color: Colors.black,
                  ),
                  title: new Text(
                    '+201142463152',
                    style: new TextStyle(
                      fontFamily: 'Cinzel',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black
                    ),
                  ),
                ),

              ),

          new Card(
            margin: EdgeInsets.fromLTRB(50, 20, 50, 20) ,
            child: new ListTile(
              leading: new Icon(
                Icons.email,
                color: Colors.black,
              ),
              title: new Text(
                '@AhmedAlMahallawey',
                style: new TextStyle(
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
            ),
            ),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () => exit(0),
            child: Icon(
              Icons.exit_to_app,
              color: Colors.black,
            )
    )

    );
  }
}
