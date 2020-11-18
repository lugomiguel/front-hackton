import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(10.92796133580664, -74.785749655962),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      appBar: AppBar(
      title: Center(child: Text('Vamos!!!')),
      backgroundColor: Colors.green,),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
        //header

        UserAccountsDrawerHeader(
        accountName: Text("Andrea"),
        accountEmail: Text("andreina@gmail.com"),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.black,
        ),
        decoration: BoxDecoration(
            color: Colors.green
          ),
        ),

      InkWell(
          onTap:(){},
          child: ListTile(
            title: Text('Mis datos'),
            leading: Icon(Icons.account_box_outlined),
          )
      ),
      InkWell(
          onTap:(){},
          child: ListTile(
            title: Text('configuracion'),
            leading: Icon(Icons.settings),
            )
          ),
        ],
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            title: Text('Explora', style: new TextStyle(color: Colors.black)),
            icon: Icon(Icons.apps,color: Colors.black)
        ),
        BottomNavigationBarItem(
            title: Text('Evento', style: new TextStyle(color: Colors.black)),
            icon: Icon(Icons.add_circle ,color: Colors.black)
        ),
        BottomNavigationBarItem(
            title: Text('Hoy', style: new TextStyle(color: Colors.black)),
            icon: Icon(Icons.place, color: Colors.black)
        ),
      ],
     ),
      bottomSheet: ,
    );
  }
}