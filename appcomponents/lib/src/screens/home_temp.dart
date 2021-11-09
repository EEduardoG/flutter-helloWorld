import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  //Items for our list
  final options = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Components Temp'),
        ),
        body: ListView(
          children: _createShortItems(),
        ));
  }

  //Return items  list.
  List<Widget> __createItems() {
    List<Widget> list = [];
    for (String opt in options) {
      //Create the list item.
      final tempWidget = ListTile(title: Text(opt));
      //Add item to list...
      list.add(tempWidget);
      list.add(Divider());
    }
    return list;
  }

  //DIfferent way to return items list.
  List<Widget> _createShortItems() {
    return options.map((item) {
      return Column(
        children: [
          ListTile(
            //Insert a leading (Like a icon or anything else) on element.
            leading: Icon(Icons.work),
            //Title of the element
            title: Text(item),
            //Subtitle of the element.
            subtitle: Text('Hello world..'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
