import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart' show SlidingUpPanel;

class VProfile extends StatefulWidget {
  @override
  _VProfileState createState() => _VProfileState();
}

class _VProfileState extends State<VProfile> {
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
                image: AssetImage('assets/images/me.jpg'),
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
                    _infoCell(title: 'Hobbies', value: 'Music'),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Icon(Icons.movie),
                    _infoCell(title: 'Favorite Movie', value: '007 Film'),
                    Container(
                      width: 1,
                      height: 42,
                      color: Colors.grey,
                    ),
                    Icon(Icons.house),
                    _infoCell(title: 'Live', value: 'Bogor, Indonesia'),
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
          'Zufar Mahasin Naufal',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '065118167',
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
