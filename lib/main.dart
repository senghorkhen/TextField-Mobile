import 'package:flutter/material.dart';

void main() => runApp(Letter());

class Letter extends StatefulWidget {
  @override
  _LetterState createState() => _LetterState();
}

class _LetterState extends State<Letter> {
  String  _firstName  = "";
  String _lastName = "";
  String _info = "";
  void register(){
    setState(() {
     _info = _firstName + " and " + _lastName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String text){
                _firstName = text;
              }
              ),
            ),
             Container(
              padding: EdgeInsets.all(30.0),

              child: TextField(
                onChanged: (String text){
                _lastName = text;
              }
              ),
            ),
            Container(
              width: 200.0,
              child: RaisedButton(
                onPressed: register,
                child: Text("Register", style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            ),
            Text(_info, style: TextStyle(fontSize: 20.0, color: Colors.green),),
          ],
        ),
      ),
    );
  }
}
