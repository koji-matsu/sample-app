import 'package:flutter/material.dart';

import 'ng_page.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample app',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/Item0': (context) => ngPage(),

      },
    );
  }
}

class MainPage extends StatelessWidget {
  final List<String> itemTitle = ["[1] 未作成", "[2] 未作成", "[3] 未作成", "[4] 未作成", "[5] 未作成", "[6] 未作成", "[7] 未作成", "[8] 未作成", "[9] 未作成", "[10] 未作成"];
  final List<String> itemsPath = List<String>.generate(10, (i) => '/Item$i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("メイン画面",
          style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),),
      ),
      body: Container(
          child: ListView.builder(
            itemCount: itemTitle.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.pushNamed(context, itemsPath[index]);
                },
                contentPadding: EdgeInsets.all(15),
                title: Text(itemTitle[index]),
              );
            },
          )
      ),
    );
  }
}
