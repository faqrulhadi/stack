import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack")
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children:<Widget>[
                Flexible(
                  flex: 1,
                  child: Row( 
                    children:<Widget>[
                    Flexible( flex: 1, child: Container( color: Colors.yellow,),),
                    Flexible( flex: 1, child: Container( color: Colors.amberAccent),),
                    Flexible( flex: 1, child: Container( color: Colors.yellow,),)
                    ]                                
                  )
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  )
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  )
                )
              ]
            ),
            Text("Test",style: TextStyle(fontSize:100),),
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                child: Text("button") ,onPressed: (){}))
          ]
        ),
        )
    );
  }
}

