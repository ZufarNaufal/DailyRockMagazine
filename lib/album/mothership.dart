import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:google_fonts/google_fonts.dart';

class MotherShip extends StatefulWidget {
  @override
  _MotherShipState createState() => _MotherShipState();
}

class _MotherShipState extends State<MotherShip> {
  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
      body: SlidingUpPanel(
        panelBuilder: (ScrollController sc) => _scrollingList(sc),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 1.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'http://images.genius.com/8d0b943f10022eb4ffec736ed00b2c51.670x670x1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ]),
        collapsed: Container(
          decoration:
              BoxDecoration(color: Colors.blueGrey, borderRadius: radius),
          child: Center(
            child: Text(
              'MotherShip',
              style: GoogleFonts.titilliumWeb(
                textStyle: TextStyle(
                    color: Colors.black, letterSpacing: .5, fontSize: 30),
              ),
            ),
          ),
        ),
        borderRadius: radius,
      ),
    );
  }

  Widget _scrollingList(ScrollController sc) {
    return ListView.builder(
      controller: sc,
      itemCount: 50,
      itemBuilder: (BuildContext context, int i) {
        return Container(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Text("data"),
            ));
      },
    );
  }
}
