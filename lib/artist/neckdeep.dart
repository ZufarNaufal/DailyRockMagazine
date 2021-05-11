import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class NeckDeep extends StatefulWidget {
  @override
  _NeckDeepState createState() => _NeckDeepState();
}

class _NeckDeepState extends State<NeckDeep> {
  double hPadding = 4;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );

    return Scaffold(
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
                    'https://pbs.twimg.com/media/DU0m5HMW4AEn2rX.jpg'),
                fit: BoxFit.cover,
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
          panelBuilder: (ScrollController controller) => _panelBody(controller),
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
                    _infoCell(title: 'Genre', value: 'Pop - Punk'),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Icon(Icons.timeline),
                    _infoCell(title: 'Formed', value: '2010'),
                    Container(
                      width: 1,
                      height: 42,
                      color: Colors.grey,
                    ),
                    Icon(Icons.house),
                    _infoCell(title: 'Homeland', value: 'Wales'),
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
          'Neck - Deep',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'A Heavy Pop Punk From Wales',
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
