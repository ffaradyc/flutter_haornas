import 'package:flutter/material.dart';
import 'package:osg5_tugas_3/data/athletes.dart';

class DetailPage extends StatelessWidget {
  final Athlete data;

  DetailPage(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(data.name),
        ),
        body: Column(
          children: <Widget>[Image.network(data.foto)],
        ));
  }
}
