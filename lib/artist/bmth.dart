import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Bmth extends StatefulWidget {
  @override
  _BmthState createState() => _BmthState();
}

class _BmthState extends State<Bmth> {
  double hPadding = 4;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.7,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.kerrangcdn.com/Bring-Me-The-Horizon-November-2019-promo.jpg?auto=compress&fit=crop&w=700&h=394'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SlidingUpPanel(
              backdropEnabled: true,
              borderRadius: BorderRadius.circular(50),
              minHeight: MediaQuery.of(context).size.height * 0.35,
              maxHeight: MediaQuery.of(context).size.height * 0.85,
              body: Container(
                color: Colors.transparent,
              ),
              panelBuilder: (ScrollController controller) =>
                  _panelBody(controller),
            ),
            ListView()
          ],
        ));
  }

  SingleChildScrollView _panelBody(ScrollController controller) {
    return SingleChildScrollView(
      controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _titleSection(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.music_note),
                    _infoCell(title: 'Genre', value: 'Metalcore'),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Icon(Icons.timeline),
                    _infoCell(title: 'Formed', value: '2004'),
                    Container(
                      width: 1,
                      height: 42,
                      color: Colors.grey,
                    ),
                    Icon(Icons.house),
                    _infoCell(title: 'Homeland', value: 'Sheffield, England'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column _infoCell({required String title, required String value}) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontFamily: 'ZenDots',
            fontSize: 17,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          value,
          style: TextStyle(
            fontFamily: 'ZenDots',
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Column _titleSection() {
    return Column(
      children: <Widget>[
        Text(
          'Bring Me The Horizon',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'British Metalcore',
          style: TextStyle(
            fontSize: 24,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
