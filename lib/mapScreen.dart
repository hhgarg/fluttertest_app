import 'dart:collection';
import 'farm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest_app/farm.dart';
import 'package:fluttertest_app/informationPage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'campus.dart';

class mapScreen extends StatefulWidget {
  @override
  _mapScreenState createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {
  Set<Polygon> _polygons = HashSet<Polygon>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setPolygons();
  }

  void _setPolygons() {
    List<LatLng> polygon1 = List<LatLng>();
    List<LatLng> polygon2 = List<LatLng>();
    polygon1.add(LatLng(12.779112, 77.694934));
    polygon1.add(LatLng(12.780802, 77.694290));
    polygon1.add(LatLng(12.780342, 77.691286));
    polygon1.add(LatLng(12.779580, 77.692150));

    _polygons.add(
      Polygon(
        polygonId: PolygonId("0"),
        points: polygon1,
        strokeWidth: 1,
        fillColor: Color(0x5AFF0000),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(12.777809, 77.694888),
              zoom: 15,
            ),
            polygons: _polygons,
          ),
          FlatButton(
            child: Padding(
              padding: EdgeInsets.fromLTRB(340, 30, 130, 700),
              child: Container(
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  //shape: BoxShape.circle,
                  color: Colors.white,
                  //borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.info,
                    color: Colors.red,
                    size: 50,
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return informationPage();
              }));
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "FLUTTER TEST",
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
                    "Ramakrishnapura, Anekal Road, Chandapura P.O,Bengaluru, Karnataka 560099",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/campus.jpeg',
                        height: 100,
                        width: 200,
                      ),
                      FlatButton(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "CAMPUS",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "14.2 Acre",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return campusPage();
                          }));
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        'images/farm.jpg',
                        height: 100,
                        width: 200,
                      ),
                      FlatButton(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "FARM",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black45,
                              ),
                            ),
                            Text(
                              "78 Acre",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return farmpage();
                          }));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
