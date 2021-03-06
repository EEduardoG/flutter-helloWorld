import 'package:flutter/material.dart';

// ignore: slash_for_doc_comments
/// STATEFUL WIDGETS
/// -Stateful widgets consists of two classes.
/// The Statefulwidget that is the widget itself and a state class which is the one
/// that handles the state of the widget.
/// **/

//This is a Statefulwidget
class CounterWidget extends StatefulWidget {
  //Return a new instance of our widget.
  @override
  createState() => _CounterWidgetState();
}

//State handler of our widget
class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: __bodyScreen(), floatingActionButton: __funcButtons());
  }

//This widget has the floating buttons.
  Widget __funcButtons() {
    //Row widget help us to align elements in a row.
    return Row(
      //Align elements to center...
      mainAxisAlignment: MainAxisAlignment.center,
      //Elementos of the row....
      children: <Widget>[
        //This Widget serves to add a separation.
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.restore), onPressed: _reset),
        //This Widget serves to add a separation.
        Expanded(child: SizedBox(width: 10.0)),
        FloatingActionButton(
            child: Icon(Icons.exposure_minus_1), onPressed: _remove),
        SizedBox(width: 10.0),
        FloatingActionButton(child: Icon(Icons.plus_one), onPressed: _add),
      ],
    );
  }

//This widget have main screen elements.
  Widget __bodyScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Number of taps:',
            style: TextStyle(fontSize: 25),
          ),
          Text('$_count', style: TextStyle(fontSize: 40))
        ],
      ),
    );
  }

  //Button actions.
  void _reset() {
    setState(() => _count = 0);
  }

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }
}
