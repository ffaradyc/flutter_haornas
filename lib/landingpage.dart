import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Pertama'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search..',
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: <Widget>[
          GridTile(
            header: Text('Test'),
            footer: Text('Aduuh'),
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
