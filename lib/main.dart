import 'package:flutter/material.dart';

import 'ng_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.aa
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MyHomePage(title: 'HOME Page',),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => ngPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Text("sample"),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
