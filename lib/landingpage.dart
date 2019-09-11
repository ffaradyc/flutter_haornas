import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'data/athletes.dart';
import 'detailpage.dart';

class LandingPage extends StatelessWidget {
  final listItem = athletes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atlit Peraih Medali Olimpiade'),
        leading: Icon(FontAwesomeIcons.trophy),
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        itemCount: listItem.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return _WidgetAthlete(listItem[index]);
        },
      ),
    );
  }
}

class _WidgetAthlete extends StatelessWidget {
  final Athlete athlete;
  _WidgetAthlete(this.athlete);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
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
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(3, 3),
                blurRadius: 6,
              ),
            ],
            border: Border.all(
              color: Colors.blueGrey,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
          child: GridTile(
            header: Container(
              padding: EdgeInsets.all(8.0),
              color: Colors.black.withOpacity(0.3),
              child: Text(
                athlete.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0, color:Colors.white),
              ),
            ),
            footer: Container(
              padding: EdgeInsets.all(8.0),
              color: athlete.medalColor,
              child: Text(
                athlete.sports,
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            child: Image.asset(athlete.foto, fit:BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
