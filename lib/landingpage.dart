import 'package:flutter/material.dart';
import 'package:osg5_tugas_3/data/athletes.dart';
import 'package:osg5_tugas_3/detailpage.dart';

class LandingPage extends StatelessWidget {
  final listItem = athletes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atlit Peraih Medali di Olimpiade'),
      ),
      body: GridView.builder(
        itemCount: listItem.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return WidgetAthlete(listItem[index]);
        },
      ),
    );
  }
}

class WidgetAthlete extends StatelessWidget {
  final Athlete athlete;

  WidgetAthlete(this.athlete);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return DetailPage(athlete);
              },
            ),
          );
        },
        child: GridTile(
          header: Text(
            athlete.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          footer: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.yellow[500].withOpacity(0.8),
            child: Text(
              athlete.sports,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          child: Image.network(athlete.foto),
        ),
      ),
    );
  }
}
