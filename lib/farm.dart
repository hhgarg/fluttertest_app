import 'package:flutter/material.dart';
class farmpage extends StatefulWidget {
  @override
  _farmpageState createState() => _farmpageState();
}

class _farmpageState extends State<farmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: <Widget>[
            Image.asset(
              'images/farm.jpg',
              height: 500,
              width: 400,
            ),
            SizedBox(height: 80,),
            Text(
              "Farm",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Text(
              "Testing",
              style: TextStyle(fontSize: 22, color: Colors.black45),
            ),
            Text(
              "78 Acre",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
