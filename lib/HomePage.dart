import 'package:flutter/material.dart';
import 'mapScreen.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.red),
  ),
);
var phoneNo;
var password;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Mobile Number",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: kTextFieldInputDecoration,
              onChanged: (value){
                phoneNo = value;
              },
            ),
            SizedBox(height: 20.0,),
            Text(
              "Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: kTextFieldInputDecoration,
              obscureText: true,
              onChanged: (value){
                phoneNo = value;
              },
            ),
            SizedBox(height: 40.0,),
            Container(
              height: 60,
              width: 150,
              color: Colors.red,
              child: FlatButton(
                onPressed: () {
                  print(phoneNo);
                  print(password);
                  Navigator.push(context , MaterialPageRoute(builder: (context) {
                    return mapScreen();
                  }));
                },

                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
