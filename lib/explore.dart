import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
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
          icon: Icon(Icons.apps,color: Colors.black),
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
    body: Container(
      child: ListView(children: <Widget>[
        img_carousel,
        ListContainerC(),
        ListContainer()
      ],),
    ),
  );
}

Widget ListContainer() {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 5.0),
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Align(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Para ti:',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16.0 )),
                  )
              ),
            ),
            Container(
              child: Align(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Ver mas',
                      style: TextStyle(color: Colors.red[800]),),
                  )
              ),
            )
          ],
        ),
        restaurantListWid()
      ],
    ),
  );
}

Widget restaurantListWid() {
  return Container(
    margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
    height: 150.0,
    child: FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(snapshot.data == null) {
          return Container(
            child: Center(
              child: Text("Cargando..."),
            ),
          );
        }
      },
    ),
  );
}

Widget categoryListWid() {
  return Container(
    height: 200,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Icon(Icons.article, size: 55,),
                Text("Lectura"),
              ],
            ),
          ),
        ),
        Container(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Icon(Icons.sports_mma, size: 55,),
                Text("Deportes"),
              ],
            ),
          ),
        ),
        Container(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Icon(Icons.party_mode, size: 55,),
                Text("Fiestas"),
              ],
            ),
          ),
        ),
        Container(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Icon(Icons.calendar_today, size: 55,),
                Text("Convenciones"),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ListContainerC() {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 5.0),
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Align(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text('Categorias',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 16.0 )),
                  )
              ),
            ),
            Container(
              child: Align(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Ver mas',
                    style: TextStyle(color: Colors.red[800]),),
                ),
              ),
            ),
          ],
        ),
        categoryListWid(),
      ],
    ),
  );
}


Widget categoryElement() {
  return GestureDetector(
    onTap: () { debugPrint('Touched'); },
    child: Container(
      width: 160.0,
      color: Colors.black,
    ),
  );
}

Widget img_carousel = new Container(
  height: 200.0,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: [
      Image.network('http://www.seccionesbonaerenses.com/data/fotos2/bbx_355481592_EVENT.jpg'),
      Image.network('https://get.pxhere.com/photo/adventure-recreation-extreme-sport-sports-boating-raft-water-sports-water-sport-rafting-outdoor-recreation-white-water-rafting-white-water-raft-1240768.jpg'),
      Image.network('https://www.lavanguardia.com/r/GODO/LV/p5/WebSite/2018/07/10/Recortada/img_ateodoro_20171207-121346_imagenes_lv_otras_fuentes_plenaria_27-kWGF--992x558@LaVanguardia-Web.jpg'),
    ],
    autoplay: true,
    animationCurve: Curves.fastLinearToSlowEaseIn,
    animationDuration: Duration(milliseconds: 1000),
    dotSize: 6.0,
    indicatorBgPadding: 8.0,
  ),
);


}





