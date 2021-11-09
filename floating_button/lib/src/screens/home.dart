import 'package:floating_button/src/screens/counter.dart';
import 'package:flutter/material.dart';

//Our home screen... yes it´s a widget to.
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Counter APP')), body: CounterWidget());
  }
}
