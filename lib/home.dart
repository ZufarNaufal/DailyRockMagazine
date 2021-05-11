import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rock_sound/album/mothership.dart';
import 'package:rock_sound/album/phsh.dart';
import 'package:rock_sound/artist/bilmuri.dart';
import 'package:rock_sound/artist/bmth.dart';
import 'package:rock_sound/artist/neckdeep.dart';
import 'package:rock_sound/view/vprofile.dart';
import 'package:rock_sound/view/vsetting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expansion_card/expansion_card.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(Icons.list_alt),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                          image: AssetImage('assets/images/me.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Welcome Strangers !',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black38,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      'Hot Topic',
                      style: GoogleFonts.titilliumWeb(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://static.billboard.com/files/media/Beartooth-2017-cr-Daniel-Hadfield-billboard-1548-compressed.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.kerrangcdn.com/Bring-Me-The-Horizon-November-2019-promo.jpg?auto=compress&fit=crop&w=700&h=394'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://static.billboard.com/files/media/Beartooth-2017-cr-Daniel-Hadfield-billboard-1548-compressed.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'New Release Album',
                      style: GoogleFonts.titilliumWeb(
                        textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .5,
                            fontSize: 30),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.9,
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/images/phsh.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.rocksound.tv/assets/uploads/bilmuri_eggypocket.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://lh3.googleusercontent.com/-jmLS2ZAInfQ/WftduCXDoTI/AAAAAAAAFC0/w7gpV0dwAUcGA5uw0BrdGAEYB53tPBUuQCHMYCw/s1600/cover.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ]),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Post - Human : Survival Horror',
                              style: GoogleFonts.titilliumWeb(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: .5,
                                    fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                        IconButton(
                          alignment: Alignment.topCenter,
                          icon: Image(
                              image: AssetImage('assets/images/phsh.jpg')),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return PhSh();
                            }));
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Dance Gavin Dance - Mothership',
                              style: GoogleFonts.titilliumWeb(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: .5,
                                    fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Card(),
                          ],
                        ),
                        IconButton(
                            alignment: Alignment.topCenter,
                            icon: Image(
                                image: NetworkImage(
                                    'http://images.genius.com/8d0b943f10022eb4ffec736ed00b2c51.670x670x1.jpg')),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MotherShip();
                              }));
                              print('Dance Gavin Dance - Mothership');
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'Artist Band',
                          style: GoogleFonts.titilliumWeb(
                            textStyle: TextStyle(
                                color: Colors.black,
                                letterSpacing: .5,
                                fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Grid()
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ExpansionCard(
                    borderRadius: 30,
                    background: Image.network(
                      "https://images.kerrangcdn.com/Bring-Me-The-Horizon-November-2019-promo.jpg?auto=compress&fit=crop&w=700&h=394",
                      fit: BoxFit.cover,
                    ),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Brng Me The Horizon",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              alignment: Alignment.topCenter,
                              icon: Icon(Icons.arrow_forward,
                                  color: Colors.white),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Bmth();
                                }));
                                print('Bring Me The Horizon Page');
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ExpansionCard(
                    borderRadius: 30,
                    background: Image.network(
                      "https://66.media.tumblr.com/b476e49a4e423fed924a319d4f4fe1ba/19618426ad784e17-e3/s540x810/faae85a1ef33a19fe1dbedbc9e043c728241b2f9.png",
                      fit: BoxFit.cover,
                    ),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Bilmuri",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              alignment: Alignment.topCenter,
                              icon: Icon(Icons.arrow_forward,
                                  color: Colors.white),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return BilMuri();
                                }));
                                print('Bilmuri Page');
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: ExpansionCard(
                    borderRadius: 30,
                    background: Image.network(
                      "https://pbs.twimg.com/media/DU0m5HMW4AEn2rX.jpg",
                      fit: BoxFit.cover,
                    ),
                    title: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Neck Deep",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              alignment: Alignment.topCenter,
                              icon: Icon(Icons.arrow_forward,
                                  color: Colors.white),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return NeckDeep();
                                }));
                                print('Neck - Deep Page');
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FabCircularMenu(children: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
                print('Home');
              }),
          IconButton(
              icon: Icon(
                Icons.person,
                size: 50,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VProfile();
                }));
                print('Profile');
              }),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 50,
            ),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VSetting();
              }));
              print('Settings');
            },
          ),
        ]),
      ),
    );
  }

  _gridItem(icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,
            size: 16.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepOrange.withOpacity(0.9),
        ),
      ],
    );
  }
}
