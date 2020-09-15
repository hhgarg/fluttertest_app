import 'package:flutter/material.dart';
import 'package:fluttertest_app/HomePage.dart';

class informationPage extends StatefulWidget {
  @override
  _informationPageState createState() => _informationPageState();
}

class _informationPageState extends State<informationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey //change your color here
        ),
        title: Text("Information",
        style: TextStyle(color: Colors.grey,),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 40,),
            Text("->  Orthomosaic",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 32,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            Text(
              "Allow us to access the camera to take pictures and detect thing.",
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey,
              ),
              ),
            SizedBox(height: 15,),
            Text("->  Digital Elevation",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 35,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),),

            const Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 15,),
            Text("->  Digital Terrain",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 35,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),),
            const Divider(
              color: Colors.grey,
            ),
            Text("Allow us to access the location to provide you location based features like tracking your activities more accurately and allowing you to tag location",
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey,
            ),),
            SizedBox(height: 15,),
            Text("->  Vegetation",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 35,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: FlatButton(
                child: Text("LOG OUT",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                ),),
                onPressed: (){
                  Navigator.push(context , MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),

    );;
  }
}
