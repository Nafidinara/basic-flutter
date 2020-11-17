import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget { //gunakan stateful widget
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {

  String txt = ''; //inisiasi awal text
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField( //input selection textfield
              onChanged: (String text) { //onChanged agar yang kita ketik dapat dibaca UI
                setState(() {
                  txt=text ; //hasil yang ditampilkan pada onChanged
                });
              },
              decoration: new InputDecoration(
                  hintText: 'Input Username :',
                  labelText: 'UserName', //menampilkan hasil yang di inputkan
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10), // menentukan tinggi tampilan text
          new Text('Namaku : ' + txt),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new TextField(
              controller: _controller,
              decoration: new InputDecoration(
                hintText: 'Type something',
                border: OutlineInputBorder()
              ),
            ),
          ),
          new RaisedButton(
            onPressed: () {
              showDialog(
                context: context,
                child: new AlertDialog(
                  title: new Text('What you typed'),
                  content: new Text(_controller.text),
                ),
              );
            },
            child: new Text('DONE'),
          ),
        ],
      ),
    );
  }
}