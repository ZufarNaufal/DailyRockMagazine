import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rock_sound/album/mothership.dart';

class VSetting extends StatefulWidget {
  @override
  _VSettingState createState() => _VSettingState();
}

List _elements = [
  {'name': 'John', 'group': 'Example'},
  {'name': 'Will', 'group': 'Example'},
  {'name': 'Beth', 'group': 'Example'},
  {'name': 'Miranda', 'group': 'Example'},
  {'name': 'Mike', 'group': 'Example'},
  {'name': 'Danny', 'group': 'Example'},
];

class _VSettingState extends State<VSetting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Setting',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey[600],
          appBar: AppBar(
            backgroundColor: Colors.grey[600],
            title: Text('Rock - Sound'),
          ),
          body: GroupedListView<dynamic, String>(
            elements: _elements,
            groupBy: (element) => element['group'],
            groupComparator: (value1, value2) => value2.compareTo(value1),
            itemComparator: (item1, item2) =>
                item1['name'].compareTo(item2['name']),
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            groupSeparatorBuilder: (String value) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            itemBuilder: (c, element) {
              return Card(
                elevation: 4.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                child: Container(
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: IconButton(
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
                    title: Text(element['name']),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
