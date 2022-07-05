import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ngPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample_app"),
        actions: const <Widget> [
          Icon(Icons.add),
          Icon(Icons.add_a_photo)
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text("2ページ目"),
            RaisedButton(
              child: Text("OK"),
              onPressed:() {

              },),
            RaisedButton(
              child: Text("NG"),
              onPressed:() {
                Navigator.pushNamed(context, "/second");
              },),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}