import 'package:flutter/material.dart';
import 'package:flutter_app/SliderView.dart';
import 'HalamanKetiga.dart';
import 'PageGridView.dart';
import 'TopBottomNav.dart';
import 'InputWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nama : Alfara Nafi Dinara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HalamanHome(), debugShowCheckedModeBanner: false,
    );
  }
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ini adalah home Home',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text('Nama : Alfara Nafi Dinara'),
            Text('Kelas : XII-RPL-1'),
            Text('Absen : 08'),

            new MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanPertama()));
                },
              child: Text('Halaman Pertama'),
              color: Colors.blue,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua()));
              },
              child: Text('Halaman Kedua'),
              color: Colors.yellow,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga()));
              },
              child: Text('Halaman Ketiga'),
              color: Colors.pink,
              textColor: Colors.deepPurple,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageGridView()));
              },
              child: Text('Halaman Grid View'),
              color: Colors.blueGrey,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewWidget()));
              },
              child: Text('Halaman ListView'),
              color: Colors.green,
              textColor: Colors.grey,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => RowColumn()));
              },
              child: Text('Halaman Row Column'),
              color: Colors.lightGreenAccent,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => TopBottomNav()));
              },
              child: Text('Halaman Top Bottom Bar'),
              color: Colors.black38,
              textColor: Colors.lightGreenAccent,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputWidget()));
              },
              child: Text('Halaman Input Widget'),
              color: Colors.blueGrey,
              textColor: Colors.black,
            ),
            new MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageSliderWidget()));
              },
              child: Text('Halaman Slider'),
              color: Colors.blueGrey,
              textColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini halaman pertama'),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Ini halaman kedua'),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text("Nama Lengkap : Alfara Nafi Dinara"),
            trailing: Icon(Icons.people),
          ),
          new ListTile(
            title: Text("Kelas : XII RPL 1"),
            trailing: Icon(Icons.class_),
          ),
          new ListTile(
            title: Text("Nomor Absen : 08"),
            trailing: Icon(Icons.format_list_numbered),
          ),
          new ListTile(
            title: Text("Sekolah : SMK Telkom Puwokerto"),
            trailing: Icon(Icons.school),
          ),
          new ListTile(
            title: Text("No HP : 089648802782"),
            trailing: Icon(Icons.phone),
          ),
          new ListTile(
            title: Text("Alamat : Wonosobo"),
            trailing: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Nama"),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Nomor Absen"),
              new Text("Saya"),
              new Text("08"),
              new Text("Kelas XII RPL 1"),
            ],
          ),
          new Text("Alfara Nafi Dinara"),
        ],
      ),
    );
  }
}


